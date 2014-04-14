require 'spec_helper'

describe User do

  it 'can be created' do
    visit users_path
    fill_in 'Name', :with => 'Jason Bourne'
    fill_in 'Password', :with => 'j'
    fill_in 'Password confirmation', :with => 'j'
    click_button 'Sign up'
    page.should have_content "User succesfully created"
  end
  it 'can be initiated by user' do
    user = User.create({name: "Rambo", password:"r", password_confirmation: "r"})
    visit new_session_path
    fill_in 'Name', :with => 'Rambo'
    fill_in 'Password', :with => 'r'
    click_button 'Log In'
    page.should have_content 'Logged in as Rambo'

 end
end
