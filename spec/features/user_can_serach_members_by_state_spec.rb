require 'rails_helper'

RSpec.describe "User can search members of the house" do
  it "searches by state" do

  visit '/'
  select "Colorado", :from => :state
  click_button "Locate Members of the House"
  
  expect(current_path).to eq(search_path)
  expect(page).to have_content('7 Results')
  expect(page).to have_selector('.representative', count: 7)
  
  within(first('.representative')) do
      expect(page).to have_content('DeGette')
      expect(page).to have_content('Name:')
      expect(page).to have_content('Role:')
      expect(page).to have_content('Party:')
      expect(page).to have_content('District:')
    end
  end
end