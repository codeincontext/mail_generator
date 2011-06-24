require "mail_generator/version"
require "mail_generator/generator"
require "mail_generator/action_mailer"
require 'action_mailer'

module MailGenerator
  
  class Railtie < ::Rails::Railtie
    ::ActionMailer::Base.send :include, MailGenerator::ActionMailer
    rake_tasks do
      load "tasks/mail_generator.rake"
    end
  end

end