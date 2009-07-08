Feature: Manage Notes
	In order to keep notes
	As a user
	I want to create and manage notes


	Scenario: Select A Note
		Given I have 2 notes
		When  I select note Note1TitleString
		Then  I should see in the edit window the note name "Note1TitleString"
		And   I should see in the edit window the note body "Note Body Text 1"		
	
	Scenario: Note List
		Given I have 2 notes
		Then  I should see the following notes:
		      | name             |
		      | Note0TitleString |
		      | Note1TitleString |
				
	@focus
	Scenario: Create New Note
		Given I have 2 notes
		When  I click New Note
		And   I fill in the note name with NewNoteName
		And	  I fill in the note body with This is the body of the note
		And   I click Save Note
		Then  I should see in the edit window the note name ""
		And   I should see in the edit window the note body ""
		And   I should see the following notes:
		      | name             |
		      | Note0TitleString |
		      | Note1TitleString |
		      | NewNoteName      |