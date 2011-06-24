require 'fileutils'

module MailGenerator
  
  class Generator
    attr_accessor :output_dir
    
    def initialize(mailer, &block)
      output_dir = Rails.root.join('mail_examples')
      FileUtils.rm_rf output_dir
      Dir.mkdir output_dir
      
      @mailer = mailer
      instance_eval &block
    end
    def mail(action, *args)
      result = @mailer.send(action, *args)
      
      parts = {}
      parts['html'] = result.html_part if result.html_part
      parts['txt'] = result.text_part if result.text_part
      
      parts.each_pair do |type, part|
        path = "#{output_dir}/#{action}.#{type}"
      
        File.open(path, 'w') {|f| f.write(part.body.decoded) }
        # `open #{path}`
      end
    end
  end
  
end