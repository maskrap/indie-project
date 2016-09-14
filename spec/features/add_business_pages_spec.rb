require 'rails_helper'

describe "the add a business process" do
  it "Adds a new business" do
    visit businesses_path
    click_link 'Add a new business'
    fill_in 'biz_name', :with => 'Test Name'
    fill_in 'biz_type', :with => 'Test Type'
    fill_in 'biz_address', :with => 'Test Street'
    fill_in 'biz_phone', :with => 'Test Phone'
    fill_in 'biz_contact', :with => 'Test Contact'
    fill_in 'biz_number', :with => 'Test Business Number'
    click_on 'Create Business'
    expect(page).to have_content 'Businesses'
  end

  it "gives an error when no title is entered" do
    visit new_business_path
    click_on 'Create Business'
    expect(page).to have_content 'error'
  end
end
