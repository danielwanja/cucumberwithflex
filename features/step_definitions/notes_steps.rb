Given /^I have ([0-9]+) notes$/ do |number_of_notes|
  Note.delete_all
  number_of_notes.to_i.times do |i|
    Note.create(:title => "Note#{i}TitleString", :body => "Note Body Text #{i}")
  end
  @flex.button(:automationName => "Search").click # reload the UI 
end

When /^I select note (.+)$/ do |note_title|
  @flex.list({:automationName => 'notesList'}).select(note_title)  
end

Then /^I should see in the edit window the note name "([^\"]*)"$/ do |note_name|
  @flex.text_input(:automationName => 'titleTextInput').text.should == note_name 
end

Then /^I should see in the edit window the note body "([^\"]*)"$/ do |note_body|
  @flex.text_input(:automationName => 'bodyTextArea').text.should == note_body 
end

Then /^I should see the following notes:$/ do |table|
  note_list = @flex.list({:automationName => 'notesList'})
  note_list.num_rows.should == table.rows.length  
  values =  note_list.values(0, note_list.num_rows)
  table.hashes.each_with_index do |entry, index|
    entry["name"].should == values[index][0]
  end  
end

When /^I click (.+)$/ do |button|
  @flex.button(:automationName => button).click
end

When /^I fill in the note name with (.+)$/ do |note_name|
  @flex.text_input(:automationName => 'titleTextInput').input(note_name)
end

When /^I fill in the note body with (.+)$/ do |note_body|
  @flex.text_input(:automationName => 'bodyTextArea').input(note_body)
end

