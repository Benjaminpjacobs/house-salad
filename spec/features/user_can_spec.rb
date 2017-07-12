require 'rails_helper'

RSpec.describe "User can search members of the house" do
  it "searches by state" do
  
  visit '/'
  select "Colorado", :from => :state
  click_button "Locate Members of the House"
  expect(current_path).to eq(search_path)

  expect(page).to have_content('7 Results')
  expect(page).to have_selector('member', count: 7)
  expect(page).to have_content('Name:')
  expect(page).to have_content('Role:')
  expect(page).to have_content('Party:')
  expect(page).to have_content('District:')
  end
end



# As a user
# When I visit "/"
# And I select "Colorado" from the dropdown
# And I click on "Locate Members from the House"
# Then my path should be "/search" with "state=CO" in the parameters
# And I should see a message "7 Results"
# And I should see a list of 7 the members of the house for Colorado
# And they should be ordered by seniority from most to least
# And I should see a name, role, party, and district for each member