# require 'rails_helper'
#
# describe "the delete a request process" do
#   it "deletes a request from db" do
#     business = Business.create({:biz_name => "Test Name", :biz_type => "Test Type", :biz_address => "Test Address", :biz_phone => "Test Phone", :biz_contact => "Test Contact", :biz_number => "Test Number"})
#     request = Request.create({:interval => 'Test request'})
#     visit business_path(business)
#     click_link "Delete"
#     expect(page).to have_content 'There are no requests'
#   end
# end
