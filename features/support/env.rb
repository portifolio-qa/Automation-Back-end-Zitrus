require 'rspec'
require 'httparty'
require 'pry'
require 'faker'
require 'allure-cucumber'


Dir[File.join(File.dirname(__FILE__), 'spec_helper/*.rb')].each { |file| require file }

PATH_PAYLOADS = ''
PATH_MASSA = ''
PATH_CONFIG = ''

World(INSTANCIAS)

AllureCucumber.configure do |config|
    config.results_directory = "reports_allure"
    config.clean_results_directory = true
    config.logging_level = Logger::INFO
end