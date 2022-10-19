#language:pt

@git
@api-git
Funcionalidade: API GitHub
  
    
    Contexto: Preparar request de Git
        Dado que eu tenha uma request de Post 
        E gero um token para a api Git
        
    Cenário: Validar criação de Repositorio
        Quando eu configuro o meu body de repositorio
        E eu envio a request de criação de repositorio
        Então a api de Git deve retornar sucesso 201 e o id 

    @git_get_id
    Cenário: Validar consulta de repositorio id
        Quando eu configuro o meu body de Git
        E eu possuo um id de repositorio
        E envio a request de consulta de Git
        Então a api de Post deve retornar sucesso 200 e o id

    Cenário: Validar criação de Issues Repositorio
        Quando eu configuro o meu body de Issues
        E eu envio a request de criação de Issues
        Então a api de Git deve retornar sucesso 201 e o id 


    @api_delete_id
    Cenário: Validar delete repositorio id
        Quando eu configuro o meu body de repositorio
        E eu possuo um id de repositorio
        E envio a request de delete de repositorio
        Então a api de Git deve retornar sucesso 200

    @git_get_id
    Cenário: Validar consulta de repositorio id
        Quando eu realizo uma request de consulta
        E eu possuo um id de repositorio
        E envio a request de consulta de Git
        Então a api de Post não deve retornar o id



