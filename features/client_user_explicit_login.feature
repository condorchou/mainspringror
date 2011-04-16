Feature: Client User Login

  So that I can manage videos and other assets
  As an administrative user of a client
  I want to be able to login
  (this is the alternative EXPLICIT way of logging in)

  Scenario: User Explicit Login
    Given a client Elsevier, a video Awesome Video and a User 'Mr. Cool'
    When I login as Mr. Cool
    Then I should be redirected to clients_videos page

