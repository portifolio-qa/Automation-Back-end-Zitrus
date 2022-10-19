module Git
  class ApiGit
    include HTTParty   

    NIVEL = ENV['NIVEL']
    ENV['PROJETO'] = 'git'
    
    URL = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV['PROJETO']}/url.yml"))
    ENDPOINT = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV['PROJETO']}/endpoint.yml"))
    
    #headers 'Content-Type' => 'application/json'
    base_uri URL[NIVEL]

    def git_post(header, body)  # :debug_output => $stdout
      puts "Git - " + JSON.pretty_generate(body)
      response = self.class.post("#{ENDPOINT['git']}", headers:header, body: JSON.pretty_generate(body))
      response
    end
    
    def git_delete(header, id)  # :debug_output => $stdout
      response = self.class.delete("#{ENDPOINT['git']}/#{id}", headers:header)
      response
    end

    def git_get_id(header, id)  # :debug_output => $stdout
      response = self.class.get("#{ENDPOINT['git']}/#{id}", headers:header)
      response
    end

  end
end
