# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Equity::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'www.77shares.com',
  :user_name            => '77shares@gmail.com',
  :password             => 'boardroom77*',
  :authentication       => 'plain',
  :enable_starttls_auto => true
}