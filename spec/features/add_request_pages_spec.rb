require 'rails_helper'

describe "the add a request process" do
  it "Adds a new request" do
    visit businesses_path
    click_link 'Add a new business'
    fill_in 'Name', :with => 'Test Name'
    fill_in 'Type', :with => 'Test Type'
    fill_in 'Address', :with => 'Test Street'
    fill_in 'Phone number', :with => 'Test Phone'
    fill_in 'Contact', :with => 'Test Contact'
    fill_in 'Business number', :with => 'Test Business Number'
    click_on 'Create Business'
    click_on 'Test Name'
    click_on 'Make request'
    fill_in 'Notes', :with => 'Test Request'
    click_on 'Create Request'
    expect(page).to have_content 'Test Request'
  end

end
