require 'capybara';
require 'capybara/cucumber';
require 'selenium-webdriver'
require 'spreadsheet';
require 'rspec';

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 10
    $url_padrao = config.app_host = 'https://www.americanas.com.br/'
end