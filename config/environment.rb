# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Demo::Application.initialize!

Demo::Application.configure do
  config.action_mailer.delivery_method = :smpt
  
  config.action_mailer.smtp_settings = {
    address:              "smpt.gmail.com",
    port:                 587,
    domain:               "domain.of.sender.net",
    authentication:       "plain",
    user_name:            "dave",
    password:             "secret",
    enable_starttls_auto: true
  }
end