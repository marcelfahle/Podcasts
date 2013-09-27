Feature: Viewing published podcasts episodes

  Scenario: No epsides are published
    Given there are no published epsides
    When I go to the episodes list page
    Then I should see that there are no episodes published

  Scenario: Some episodes are published
    Given there are some episodes published
    When I go to the episodes list page
    Then I should see the published episodes sorted by date
