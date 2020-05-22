require 'capybara'
require 'capybara/cucumber'
require 'pry'
require 'selenium-webdriver'
require 'site_prism'
require 'yaml'
require 'rubocop'

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
    args: %w[
      --no-sandbox
      --acceptInsecureCerts=true
      --disable-impl-side-painting
      --debug_level=3
      --ignore-ssl-errors
      --ignore-certificate-errors
      --disable-popup-blocking
      --disable-gpu
      --disable-translate
      --start-maximized
      --incognito
    ]
  )
  client = Selenium::WebDriver::Remote::Http::Default.new
  client.read_timeout = 90
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options, http_client: client)
end

Capybara.configure do |config|
    config.default_driver = :chrome
    config.app_host = 'https://www.livelo.com.br'
    config.default_max_wait_time = 20
end



  
