require 'spec_helper'

describe "My behaviour" do

  it "walk through stuff" do
    visit housings_path
    click_link "New Housing"
    fill_in "Name", with: "Lily"
    fill_in "Floornum", with: 3
    click_on "Create Housing"
    page.should have_content("Housing was successfully created.");

  end
end