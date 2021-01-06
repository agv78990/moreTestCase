Feature: Submit user info


Scenario: Make a valid api call to submit user info
    Given Endpoint: https://5x9m5ed0tj.execute-api.us-east-1.amazonaws.com/test/submit
    And Authorization Type: Bearer Token: Token(code)
    And UserName: 1u5io4va9sr45n79fceg2damjf
    And Password: 1qbkthvp7lbc7aavuhhmfg8f2crekor9h2h7abu2oru1nlpj71fe
    And Content-Type: application/json
    And  Request Type: POST
    And  Body
          {"name":"HUMA",
         "id":"001"} 
    When  Make a call to the /test/submit
    Then Verify the response in body 
          "statusCode": 200,
          "userName": "001HUMA"


Scenario: Make a valid call to verify status code 200 OK
     Given Endpoint: https://5x9m5ed0tj.execute-api.us-east-1.amazonaws.com/test/submit
    And Authorization Type: Bearer Token: Token(code)
    And UserName: 1u5io4va9sr45n79fceg2damjf
    And Password: 1qbkthvp7lbc7aavuhhmfg8f2crekor9h2h7abu2oru1nlpj71fe
    And Content-Type: application/json
    And  Request Type: POST
    And  Body
          {"name":"HUMA",
         "id":"001"} 
    When  Make a call to the /test/submit
    Then verify the status code "200 ok"

scenario: Make a valid call to verify content-type:application/json

     Given Endpoint: https://5x9m5ed0tj.execute-api.us-east-1.amazonaws.com/test/submit
    And Authorization Type: Bearer Token: Token(code)
    And UserName: 1u5io4va9sr45n79fceg2damjf
    And Password: 1qbkthvp7lbc7aavuhhmfg8f2crekor9h2h7abu2oru1nlpj71fe
    And Content-Type: application/json
    And  Request Type: POST
    And  Body
          {"name":"HUMA",
         "id":"001"} 
    When  Make a call to the /test/submit
    Then Verify the content-type:application/json