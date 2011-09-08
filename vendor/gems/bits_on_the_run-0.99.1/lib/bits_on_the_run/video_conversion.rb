module BitsOnTheRun
  class VideoConversion
    
    def self.show(video_key)
      client = Client.new('/videos/conversions/show', :conversion_key => video_key)
      new(client.response)
    end

    def self.list(video_key)
      client = Client.new('/videos/conversions/list', :video_key => video_key)
      client.response.elements["//conversions"].map do |fragment|
        new(REXML::Document.new(fragment.to_s)) if fragment.respond_to?(:name)
      end.compact
    end
    
    def self.create!(video_key, template_id) 
      VideoConversion.save(video_key, template_id)
    end
    
    def self.save(video_key, template_id)
      conversion = Client.new('/videos/conversions/create', 
        :video_key => video_key, 
        :template_id => template_id
      ) 
      new(conversion.response)
    end

    def self.delete!(conversion_key)
      VideoConversion.delete(conversion_key)
    end

    def self.delete(conversion_key)
      client = Client.new('/videos/conversions/delete', :conversion_key => conversion_key)
      client.response.elements["//status"][0]
    end

    attr_reader :key, :duration, :width, :height
    attr_accessor :file_size, :status, :template_id, :error_message

    def initialize(*args)
      if args.first.is_a?(REXML::Element)
        initialize_from_xml(args.first)
      else
        initialize_from_hash(*args)
      end
    end
    
    private

    def initialize_from_hash(params = {})
      params = params.symbolize_keys
      @key               = params[:key]
      self.file_size     = params[:file_size]
      self.status        = params[:status]
      @duration          = params[:duration]
      @height            = params[:height]
      @width             = params[:width]
      self.template_id   = params[:template_id]
      self.error_message = params[:error_message]
    end

    def initialize_from_xml(doc)
      initialize_from_hash(
        :key           => extract_xpath(doc, "//@key"),
        :file_size     => extract_xpath(doc, "//filesize").to_i,
        :duration      => extract_xpath(doc, "//duration").to_f,
        :height        => extract_xpath(doc, "//height").to_i,
        :width         => extract_xpath(doc, "//width").to_i,
        :status        => extract_xpath(doc, "//status"),
        :template_id   => extract_xpath(doc, "//template/@id").to_i,
        :error_message => extract_xpath(doc, "//error/message")
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
