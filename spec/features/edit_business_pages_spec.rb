require 'rails_helper'

describe "the edit a business process" do
  it "edits a business" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    
    business = Business.create({:biz_name => "Test Name", :biz_type => "Test Type", :biz_address => "Test Address", :biz_phone => "Test Phone", :biz_contact => "Test Contact", :biz_number => "Test Number"})
    visit business_path(business)
    click_link "Edit"
    fill_in 'Name', :with => 'Test Name2'
    fill_in 'Type', :with => 'Test Type2'
    fill_in 'Address', :with => 'Test Street2'
    fill_in 'Phone number', :with => 'Test Phone2'
    fill_in 'Contact', :with => 'Test Contact2'
    fill_in 'Business number', :with => 'Test Business Number2'
    click_on 'Update Business'
    expect(page).to have_content 'Businesses'
  end
end
