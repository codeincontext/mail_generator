require "mail_generator/version"
require "mail_generator/generator"
require 'action_mailer'

module MailGenerator
  
  module MailerExtensions
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def generate_samples(&block)
        MailGenerator::Generator.new(self, &block)
      end
    end
  end
  
  
  class Railtie < ::Rails::Railtie
    ActionMailer::Base.send :include, MailGenerator::MailerExtensions
    rake_tasks do
      load "tasks/mail_generator.rake"
    end
  end

end