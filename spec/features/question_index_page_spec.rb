require 'spec_helper'

describe Question do

  it 'allows user to visit the New Topic page' do
    visit questions_path
    click_link 'New Topic'
    page.should have_content "Create a new topic"
  end

  it 'can create a new topic when a user is logged in' do
    visit new_question_path
    fill_in 'Title', :with => 'Favorite action star'
    fill_in 'Question', :with => 'Who is the best action star?'
    click_button 'Submit'
    page.should have_content 'Favorite action star'

 end
end
