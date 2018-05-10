class MediumBot
  # url target
  URL = 'https://medium.com/@LuisOsnet'.freeze

  def initialize
    # Capybara makes it convenient to switch between different drivers.
    # It also exposes an API to tweak those drivers with whatever settings you
    # want, or to add your own drivers. This is how to override the selenium
    # driver configuration to use chrome:
    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, browser: :firefox)
    end

    # Normally Capybara expects to be testing an in-process Rack application,
    # but you can also use it to talk to a web server running anywhere on the
    # internet, by setting app_host:
    Capybara.app_host = URL
    # Returns the value of attribute default_host
    Capybara.default_host = URL
    # Returns The name of the driver to use by default
    Capybara.default_driver = :selenium
    # By default Capybara will try to boot a rack application automatically.
    # You might want to switch off Capybara's rack server if you are running
    # against a remote application:
    Capybara.run_server = false
    # Returns The name of the driver used when JavaScript is needed
    Capybara.javascript_driver = :webkit
  end

  # Run service "MediumBot.new.run"
  def run
    session = Capybara::Session.new(:selenium)
    session.visit(URL)
  end
end
