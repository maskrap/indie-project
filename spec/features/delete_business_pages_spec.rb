require 'rails_helper'

describe "the delete a business process" do
  it "deletes a business from db" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    
    business = Business.create({:biz_name => "Test Name", :biz_type => "Test Type", :biz_address => "Test Address", :biz_phone => "Test Phone", :biz_contact => "Test Contact", :biz_number => "Test Number"})
    visit business_path(business)
    click_link "Delete"
    expect(page).to have_content 'Businesses'
  end
end
