module INSTANCIAS
  
    PATH_PAYLOADS = File.dirname(__FILE__) + "/payloads/#{ENV['PROJETO']}/"
    PATH_MASSA = File.dirname(__FILE__) + "/massa/#{ENV['PROJETO']}/"
    PATH_CONFIG = File.dirname(__FILE__) + "/config/#{ENV['PROJETO']}"
  
    class ApiMain

        def api_api
            Api::ApiApi.new
        end

        def login
            Common::LoginKeyCloak.new
        end

        def utils
            Common::Utils.new
        end
    end
    
    def api
        ApiMain.new
    end
        
end
