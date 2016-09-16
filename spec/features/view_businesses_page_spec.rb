require 'rails_helper'

describe "the view businesses process" do
  it "lists the businesses on the index page" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    business = Business.create({:biz_name => "Test Name", :biz_type => "Test Type", :biz_address => "Test Address", :biz_phone => "Test Phone", :biz_contact => "Test Contact", :biz_number => "Test Number"})
    visit businesses_path
    expect(page).to have_content 'Test Name'
  end
end
