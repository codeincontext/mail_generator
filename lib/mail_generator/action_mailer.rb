module MailGenerator
  module ActionMailer
    
    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def generate_samples(&block)
        MailGenerator::Generator.new(self, &block)
      end
    end
    
  end
end