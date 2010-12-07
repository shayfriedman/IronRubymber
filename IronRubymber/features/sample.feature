Feature: Sample Spec
  As a user
  I love doing funky stuff
  To make developers miserable
  
  Scenario: String.Length should return the length of a string
    Given the .NET string "Yes"
    When I fetch the value of the Length property
    Then I should get 3
	
  Scenario: String concatination should combine two strings
    Given the .NET string "Iron"
    And the .NET string "Ruby"
    When I concatinate the strings
    Then I should get "IronRuby"