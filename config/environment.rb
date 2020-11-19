# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default_options = {from: 'no-reply@example.com'}

ActionMailer::Base.smtp_settings = {
#   :enable_starttls_auto => true,  #this is the important shit!
#   :address => 'smtp.gmail.com', #'localhost', 
#   :port => 587,
#   :tls => true,
#   :domain => 'mail.google.com',  # mail.customdomain.com if you use google apps
#   :authentication => :login,
#   :user_name => 'jatinkumar.nitk@gmail.com',
#   :password => '_secret_password'
:address => "smtp.gmail.com",
    :port => 587,
    :tls => true,
    :domain => "gmail.com",
    :user_name => "kirishimareimac@gmail.com",
    :password => "kbgvtmipetcyyxuv",
    :authentication => "plain",
    :enable_starttls_auto => true
} 
