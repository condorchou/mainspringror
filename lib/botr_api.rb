=begin
/*-----------------------------------------------------------------------------
 * Ruby on Rails API kit for the Bits on the Run API (ported from the PHP kit)
 *
 * Author:      Homan Chou (Sergey Lashin PHP kit)
 *
 * For the System API documentation see http://docs.bitsontherun.com/system-api
 *-----------------------------------------------------------------------------
 */
    botr = BotrApi.new('key','secret')
    response = botr.call('/videos/list')
    
    key = response['response']['videos']['video']['key']
    #upate thumbnail
    response = botr.call('/videos/thumbnails/update', :video_key => key)
    
    upload_link = response['response']['thumbnail']['link']
    response = botr.upload(upload_link, "#{RAILS_ROOT}/public/images/logo.png")
    
    assert_equal 'ok', response['response']['status']
    

=end

require 'digest/sha1'
require 'net/http'
require 'uri'

class BotrApi
  
  attr_accessor :url, :key, :secret

  #initializes the API with the key and secret from
  #the BOTR account
  
  def initialize(key, secret)
    @key, @secret = key, secret
    @url = 'http://api.bitsontherun.com/v1';
  end 
  
  #creates a signature so Botr knows the request is valid
  def sign(args)
    sorted = args.sort{|a,b| a.to_s <=> b.to_s} #hash turns into array of name value pairs
    sorted = sorted.collect {|name, value| "#{name}=#{value}"}.join('&')
    return Digest::SHA1.hexdigest(sorted + @secret)
  end  
  
  #create args hash from query params, and adds some specials ones that is ready to make a botr request
  def process_args(*args)
    args = args.extract_options!
    
    args[:api_nonce] ||= rand.to_s[2..10]
    args[:api_timestamp] ||= Time.now.to_i
    args[:api_key] ||= @key
    args[:api_format] ||= 'xml'
    
    #urlencode values
    args.each do |key, value|
      args[key] = CGI::escape(value.to_s)
    end
    
    #sign the arguments
    args[:api_signature] = sign(args)
    return args
    
  end

  #makes the call to Botr
  
  def call(call_url, *args)
    args = args.extract_options!
    #In Rails, we can use ActiveSupport’s Hash#to_query method.
    url = @url + call_url + '?' + process_args(args).to_query
    xml = Net::HTTP.get_response(URI.parse(url)).body
    return Hash.from_xml(xml)
  end
  
  #with the upload_link returned from the "call", we can construct the upload url
  
  def upload_url(upload_link)
    url = upload_link['protocol'] + '://' + upload_link['address'] + 
          upload_link['path'] + '?key=' + upload_link['query']['key'] +
          '&token=' + upload_link['query']['token']
    return url
  end
  
  #does a file upload
  def upload(upload_link, file_path, *args)
    args = args.extract_options!
    args['api_format'] ||= 'xml'
    url = upload_url(upload_link) + '&api_format=' + args['api_format']
    xml = `curl --form file=@#{file_path} --silent "#{url}"`
    return Hash.from_xml(xml)
  
    
  end

end
