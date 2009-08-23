require "smtp_tls"

ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => "photobagel.com",
  :authentication => :plain,
  :user_name => "chap@photobagel.com",
  :password => 'benz626\sign'
}