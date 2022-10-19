
Before('@api') do
    ENV['PROJETO'] = 'api'
    PATH_PAYLOADS = File.dirname(__FILE__) + "/payloads/#{ENV['PROJETO']}/"
    PATH_MASSA = File.dirname(__FILE__) + "/massa/#{ENV['PROJETO']}/"
    PATH_CONFIG = File.dirname(__FILE__) + "/config/#{ENV['PROJETO']}"
end

