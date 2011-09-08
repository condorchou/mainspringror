require 'digest/md5'

module BitsOnTheRun
  class Video

    def self.list(options = nil)
      if options.is_a?(String) && !options.empty?
        require 'cgi'
        uri = URI.parse(options)
        options = CGI.parse(uri.query)
      end
      
      client = Client.new('/videos/list', options)
      client.response.elements["//videos"].map do |fragment|
        new(REXML::Document.new(fragment.to_s)) if fragment.respond_to?(:name)
      end.compact

    end
    
    def self.signed_player_url(video_key, player_key, expires_in = 20.seconds)
      path = "players/#{video_key}-#{player_key}.js"
      expires_at = (Time.now + expires_in).to_i
      signature = Digest::MD5.hexdigest("#{path}:#{expires_at}:#{Configuration.api_secret}")
      "http://content.bitsontherun.com/#{path}?exp=#{expires_at}&sig=#{signature}"
    end
    
    def self.show(video_key)
      client = Client.new('/videos/show', :video_key => video_key)
      new(client.response)
    end

    def self.delete(video_key)
      client = Client.new('/videos/delete', :video_key => video_key)
    end
    
    def self.create!(params = {})
      returning new(params) do |video|
        video.save!
      end
    end

    def self.update(video_key, video_attributes)
      Video.update_attributes(video_key,video_attributes)
    end

    def self.update_attributes(video_key, video_attributes)
      status = Client.new('videos/update', :video_key => video_key, :video_attributes => video_attributes)
      status.response.elements["//status"][0]
    end

    def self.delete!(video_key)
      Video.delete(video_key)
    end

    def self.delete(video_key)
      status = Client.new('/videos/delete', :video_key => video_key)
      status.response.elements["//status"][0]
    end

    def self.signed_player_url(video_key, player_key, expires_in = 20.seconds)
      path = "players/#{video_key}-#{player_key}.js"
      expires_at = (Time.now + expires_in).to_i
      signature = Digest::MD5.hexdigest("#{path}:#{expires_at}:#{Configuration.api_secret}")
      "http://content.bitsontherun.com/#{path}?exp=#{expires_at}&sig=#{signature}"
    end
    
    attr_reader :key, :views
    attr_accessor :author, :date, :description, :duration, :link, :status
    attr_accessor :tags, :title, :filename

    def initialize(*args)
      if args.first.is_a?(REXML::Document)
        initialize_from_xml(args.first)
      else
        initialize_from_hash(*args)
      end
    end

    def templates
      @templates ||= VideoTemplate.list(key)
    end

    def conversions
      @conversions ||= VideoConversion.list(key)
    end
    
    def save!
      client = Client.new('/videos/create',
        :title       => title,
        :tags        => tags.join(", "),
        :description => description,
        :author      => author,
        :date        => date.to_i,
        :link        => link,
        :md5         => md5,
        :size        => size
      )

      post_video = VideoCreateResponse.new(client.response)
      @key = post_video.key
      post_video.response(filename)
    end

    private

    def md5
      hash = Digest::MD5.new
      File.open(filename, 'r') do |file|
        hash.update(file.read(16384)) until file.eof
      end
      hash.hexdigest
    end

    def size
      File.size(filename)
    end

    def initialize_from_hash(params = {})
      params = params.symbolize_keys
      @key             = params[:key]
      self.author      = params[:author]
      self.date        = params[:date]        || Time.now
      self.description = params[:description]
      self.duration    = params[:duration]    || 0
      self.link        = params[:link]
      self.status      = params[:status]
      self.tags        = params[:tags]        || []
      self.title       = params[:title]
      self.filename    = params[:filename]
      @views           = params[:views]
    end

    def initialize_from_xml(doc)
      tags = extract_xpath(doc, "//video/tags")
      tags = tags.split(/, */) if tags.present?

      initialize_from_hash(
        :key         => extract_xpath(doc, "//video/@key"),
        :author      => extract_xpath(doc, "//video/author"),
        :date        => Time.at(extract_xpath(doc, "//video/date").to_i),
        :description => extract_xpath(doc, "//video/description"),
        :duration    => BigDecimal.new(extract_xpath(doc, "//video/duration")),
        :link        => extract_xpath(doc, "//video/link"),
        :status      => extract_xpath(doc, "//video/status"),
        :tags        => tags,
        :title       => extract_xpath(doc, "//video/title"),
        :views       => extract_xpath(doc, "//video/views").to_i
      )
    end

    def extract_xpath(doc, path)
      child = doc.elements[path]
      if child.present?
        if path.include?('@')
          child.value
        else
          child[0]
        end.to_s
      else
        nil
      end
    end
  end
end

