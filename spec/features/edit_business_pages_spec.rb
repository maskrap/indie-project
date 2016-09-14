require 'rails_helper'

describe "the edit a business process" do
  it "edits a business" do
    business = Business.create({:biz_name => "Test Name", :biz_type => "Test Type", :biz_address => "Test Address", :biz_phone => "Test Phone", :biz_contact => "Test Contact", :biz_number => "Test Number"})
    visit business_path(business)
    click_link "Edit"
    fill_in 'biz_name', :with => 'Test Name2'
    fill_in 'biz_type', :with => 'Test Type2'
    fill_in 'biz_address', :with => 'Test Street2'
    fill_in 'biz_phone', :with => 'Test Phone2'
    fill_in 'biz_contact', :with => 'Test Contact2'
    fill_in 'biz_number', :with => 'Test Business Number2'
    click_on 'Update Business'
    expect(page).to have_content 'Businesses'
  end
end
