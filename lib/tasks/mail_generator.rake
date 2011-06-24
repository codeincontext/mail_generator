namespace :mail do
  desc 'Compile your mail templates to html/txt files'
  # rake mail:generate
  task :generate => :environment do
    config_file = Rails.root.join('config/mail_generator')
    require config_file
    puts 'Generated'
  end
end
