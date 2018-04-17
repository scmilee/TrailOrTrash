require "rails_helper"

RSpec.describe "Creating a national park,", type: :system do
  
  it "allows a user to add a national park " do
    visit new_national_park_path
    fill_in "Name", with: "Bills Park"
    click_on ("Create National Park")
    visit national_parks_path
    expect(page).to have_content("Bills Park")
  end
  
  it "does not allow a user to add a park without a name" do
    visit new_national_park_path
    fill_in "Name", with: ""
    click_on ("Create National Park")
    expect(page).to have_content("Must enter a Name")
  end

end