Feature: Client User Explicit Login

  So that I can manage videos and other assets
  As an administrative user of a client
  I want to be able to login securely using password

  Scenario: User Explicit Login Happy path
    Given a client Elsevier, a video Awesome Video and a User 'Mr. Cool'
    When I login as Mr. Cool with password
    Then I should be redirected to clients_videos page

  Scenario: User Explicit Login No Password
    Given a client Elsevier, a video Awesome Video and a User 'Mr. Cool'
    When I login as Mr. Cool without password
    Then I should see an error


