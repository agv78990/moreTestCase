
Feature: Get Token


Scenario: Make a valid api call to get a token
    Given Endpoint: https://izaan-test.auth.us-east-1.amazoncognito.com/oauth2/token
    And Authorization Type: Basic Authorization
    And UserName: 1u5io4va9sr45n79fceg2damjf
    And Password: 1qbkthvp7lbc7aavuhhmfg8f2crekor9h2h7abu2oru1nlpj71fe
    And Content-Type: application/x-www-form-urlencoded
    And Request Type: POST
    And Body x-www-form-urlencoded scope=izaan_test/post_info, grant_type=client_credentials
    When Make a call to the /oauth2/token
    Then Verify that there is a long string named acesss token
    And Verify Token_Type=Bearer