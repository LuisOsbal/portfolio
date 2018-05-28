# frozen_string_literal: false

SMTP_SETTINGS = {
  address: ENV.fetch('SMTP_ADDRESS'), # example: "smtp.sendgrid.net"
  authentication: :login,
  domain: ENV.fetch('SMTP_DOMAIN'), # example: "heroku.com"
  enable_starttls_auto: false,
  password: ENV.fetch('SMTP_PASSWORD'),
  port: ENV.fetch('SMTP_DEFAULT_PORT'),
  user_name: ENV.fetch('SMTP_USERNAME')
}.freeze
