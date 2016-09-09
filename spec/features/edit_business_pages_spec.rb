require 'rails_helper'

describe "the edit a business process" do
  it "edits a business" do
    business = Business.create({:biz_name => "Test Name", :biz_type => "Test Type", :biz_address => "Test Address", :biz_phone => "Test Phone", :biz_contact => "Test Contact", :biz_number => "Test Number"})
    visit business_path(business)
    click_link "Edit"
    fill_in 'Name', :with => 'Test Name2'
    fill_in 'Type', :with => 'Test Type2'
    fill_in 'Street', :with => 'Test Street2'
    fill_in 'Phone', :with => 'Test Phone2'
    fill_in 'Contact', :with => 'Test Contact2'
    fill_in 'Business Number', :with => 'Test Business Number2'
    click_on 'Update Business'
    expect(page).to have_content 'Businesses'
  end
end
