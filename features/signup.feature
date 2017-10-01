Feature: As a user 
	I want to create 
	A new account for mendeley.com”

    Scenario Outline: Valid Email
      Given a user visits the create account page
      When I enter "<email>"
      Then I should see the page "<page>"

      Examples: Users
        | email                        | page               | 
        | elianpereyra@gmail.com       | Enter Details Page |    

    Scenario Outline: Existing Email
      Given a user visits the site
      When I enter "<existing email>"
      Then I should see the message "<page>"

      Examples: Users
        | existing email    | page  | 
        | existing@email    | Login |  

    Scenario Outline: Invalid Email
      Given a user visits the site
      When I enter an "<invalid email>"
      Then I should see the message "<error message>"

      Examples: Users
        | invalid email     | error message |
        | invalidEmail      | Invalid email |

    Scenario Outline: Valid User Details
      Given a user visits the site
      When I enter a "<given name>"
      And  I enter a "<family name>"
      And  I enter a "<password>"
      Then I should see the "<page>"

      Examples: Users
        | given name        | family name                | password | page     |
        | validName         | validFamily                | 123456   | newsFeed | 


    Scenario Outline: Blank User Details
      Given a user visits the site
      When I enter a "<given name>"
      And  I enter a "<family name>"
      And  I enter a "<password>"
      Then I should see the "<error message>"

      Examples: Users
        | given name        | family name                | password | error message     |
        | validName         | validFamily                | 1        | newsFeed          | 

