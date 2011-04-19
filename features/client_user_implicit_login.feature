Feature: Client Intranet (implicit) User Login

  So that I view videos within intranet
  As a client user
  I should implicitly login

  Scenario: User Implicit Login Happy Path
    Given a client Elsevier, a video Awesome Video and a User 'Mr. Cool'
    When I implicitly login as Mr. Cool
    Then I should be redirected to the show Awesome Video page

  Scenario: User Implicit Login without Credentials
    Given a client Elsevier, a video Awesome Video and a User 'Mr. Cool'
    When I implicitly login without credentials
    Then I should see an error page
