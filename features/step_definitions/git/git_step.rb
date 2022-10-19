Dado('que eu tenha uma request de Post') do
    $request = YAML.load_file("#{PATH_PAYLOADS}git.yml")
    $header = YAML.load_file("#{PATH_MASSA}header_padrao.yml")
end

Dado('gero um token para a api Git') do
    $user_data = YAML.load_file("#{PATH_PAYLOADS}login.yml")
    $obter_token = account.login.loginKeyCloak_post($user_data['username'], $user_data['password'], $user_data['bearer_token'])
    $header['Authorization'] = "Bearer #{$obter_token['access_token']}"
end
  
Quando('eu configuro o meu body de repositorio') do
   $request['validGit']['name'] = Faker::Company.name
   $request['validGit']['description'] =  $request['validGit']['name']
   $request['validGit']['homepage'] =  $request['validGit']['name']
end

Quando('eu envio a request de criação de repositorio') do
    $response = account.api_git.git_post($header, $request['validGit'])
end

Quando('a api de Git deve retornar sucesso 201 e o id') do
    git_id = git.api_git.git_post($header, $request['validGit'])
    $id = git_id['data']['id'] 
end
  
Quando('envio a request de consulta de repositorio') do
    $response = account.api_git.git_get_id($header, $id)
end

Quando('envio a request de delete de repositorio') do                            
    $response = account.api_git.git_delete($header, $id)
end
                                                                                               
Então('a api de git deve retornar sucesso {int} e o array retorna repositorio') do |code|      
    expect($response.code).to eql code
    expect($response['data'].length).not_to eql 0
end                                                                                            
                                                                               
Então('a api de git deve retornar sucesso {int}') do |code|               
    expect($response.code).to eql code
end

Então('a api de git deve retornar sucesso {int} e o id') do |code|
    expect($response.code).to eql code
    expect($response['data']['id']).not_to be nil
    account.api_git.git_delete($header, $response['data']['id'])
end


