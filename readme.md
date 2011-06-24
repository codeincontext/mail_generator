# mail_generator

mail_generator allows you to generate your ActionMailer emails to a file, using sample data.

It has been tested in Rails 3.0 and Ruby 1.8.7.

## Why?

Developing email templates has always been a nightmare for me. This gem will build your ActionMailer emails into .html and .txt files, so that you can load them in your browser.

## Installation

Include in your Gemfile:

    gem 'mail_generator'

## Installation

Add a mail_generator.rb file to the config directory:

    UserMailer.generate_samples do
      mail :creation_message,           User.last
      mail :username_change_message,    User.last,   'monkey'
      mail :comment_notification,       User.last,   Comment.last
      mail :messaging_invitation,       User.last,   "james@site.com"
      mail :password_reset_message,     User.last
      mail :following_notification,     Following.first
      mail :email_change_message,       User.last,   'frog@monkey.info'
      mail :message_notification,       User.last,    Message.last
      mail :api_approval_notification,  User.last,    Service.last
    end

I hope this format is fairly self-explanatory.

## Use

    rake mail:generate

## License

This project is licensed under the [Don't Be a Dick License][0], version 0.1, and is copyright 2011 by Adam Howard. See the [LICENSE.md][0] file for elaboration on not being a dick.  (But you probably already know.)

## Authors

* [Adam Howard](https://github.com/skattyadz)

[0]: http://github.com/SFEley/candy/blob/master/LICENSE.markdown
