Feature: Testando API JSONPlaceholder

  Scenario: Testando retorno de people/1
    Given url "https://jsonplaceholder.typicode.com/posts/1"
    When method get
    Then status 200

  Scenario: Testando retorno de posts/1 com informações inválidas
    Given url "https://jsonplaceholder.typicode.com/posts/1234"
    When method get
    Then match response == {}

  Scenario: Verificar o título do primeiro post
    Given url "https://jsonplaceholder.typicode.com/posts"
    When method get
    Then status 200
    And match response[0].title == "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"

  Scenario: Verificar campos do segundo post
    Given url "https://jsonplaceholder.typicode.com/posts"
    When method get
    Then status 200
    And match response[1] contains {userId: 1, id: 2, title: '#string', body: '#string'}

  Scenario: Verificar quantidade de posts
    Given url "https://jsonplaceholder.typicode.com/posts"
    When method get
    Then status 200
    And match response.length >= 3

  Scenario: Verificar código de status 404 para ID de post inválida
    Given url "https://jsonplaceholder.typicode.com/posts/9999"
    When method get
    Then status 404




