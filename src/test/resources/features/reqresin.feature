@reqresin
Feature: Reqresin

  @positive
  Scenario: Success GET users
    When user send GET Users request to reqresin
    Then response status code should be 200
    And response structure should match json schema "users.json"

  @positive @post-login
  Scenario: Success POST login
    When user send POST login request to reqresin
    Then response status code should be 200
    And response structure should match json schema "login.json"

  @negative @post-login
  Scenario: Failed POST login
    When user send POST login request to reqresin with body json "failed-login.json"
    Then response status code should be 400

  @positive
  Scenario: Success PUT update
    When user send PUT Update request to reqresin
    Then response status code should be 200
    And response structure should match json schema "update-user.json"

  @positive @get-single
  Scenario: Success GET single resource
    When user send GET Single request to reqresin with body json "success-get.json"
    Then response status code should be 201