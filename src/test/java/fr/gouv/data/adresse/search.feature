Feature: karate test script for ban search

  Scenario: Testing valid GET endpoint
    Given url 'https://api-adresse.data.gouv.fr/search/?q=8%20bd%20du%20port'
    When method GET
    Then status 200

  Scenario: Testing valid GET endpoint and match citycode
    Given url 'https://api-adresse.data.gouv.fr/search/?q=8%20bd%20du%20port'
    When method GET
    Then status 200
    And match $ contains {version:"draft"}
    And match response.features[4].properties contains {citycode:'66017'}