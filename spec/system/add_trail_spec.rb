require "rails_helper"

RSpec.describe "adding a trail", type: :system do
  it "allows a user to create a trail" do
    visit new_trail_path

    fill_in "Name", with: "Appalachian Trail"
    
    click_on("Create Trail")
    visit trails_path

    expect(page).to have_content("Appalachian Trail") 
    expect(page).to have_content(8)
  end

  it "allows a user to create a trail" do
    visit new_trail_path

    fill_in "Name", with: ""
    
    click_on("Create Trail")

    expect(page).to have_content("Your trail must have a name") 
    
  end
end

