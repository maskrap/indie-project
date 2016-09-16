require 'rails_helper'

describe "the add a business process" do
  it "Adds a new business" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit businesses_path
    click_link 'Add a new business'
    fill_in 'Name', :with => 'Test Name'
    fill_in 'Type', :with => 'Test Type'
    fill_in 'Address', :with => 'Test Street'
    fill_in 'Phone number', :with => 'Test Phone'
    fill_in 'Contact', :with => 'Test Contact'
    fill_in 'Business number', :with => 'Test Business Number'
    click_on 'Create Business'
    expect(page).to have_content 'Businesses'
  end

  it "gives an error when no title is entered" do
    visit new_business_path
    click_on 'Create Business'
    expect(page).to have_content 'error'
  end
end
