require "capybara"
require "capybara/cucumber"
require "webdrivers"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://wejump-automation-test.github.io/qa-test"
    config.default_max_wait_time = 5
end
