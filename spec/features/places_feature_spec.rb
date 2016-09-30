require 'rails_helper'
describe 'The places feature' do
  it 'allow a user to make a new place' do
    visit root_path
    fill_in 'Name', with: 'Sacramento'
    fill_in 'Address', with: '915 I Street, Sacramento, CA 95814 '
    click_on 'Create Place'
    expect(page).to have_content 'Sacramento'
  end
  it 'should geocode address' do
    place = FactoryGirl.create(:place)
    visit place_path(place)
    expect(page).to have_content("45")
  end
end
