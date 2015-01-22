require 'rails_helper'

feature "User creates a category", %Q{

  User Story:

  As a user
  I want to add a category
  So that I can categorize products

  Acceptance Criteria:

  [X] - I must specify a unique name
  [X] - I am shown a confirmation message upon success
  [X] - I am shown error messages if I
        1) Enter a used name
        2) Submit a blank form
} do

  scenario "User creates a new category" do

    category = FactoryGirl.build(:category)

    visit root_path

    click_on "Create a new category"

    fill_in "Name", with: category.name

    click_on "Submit"

    expect(page).to have_content "Success!"
    expect(page).to have_content category.name
  end

  scenario "User enters a used category name" do
    cat1 = FactoryGirl.create(:category)

    visit root_path

    click_on "Create a new category"

    fill_in "Name", with: cat1.name

    click_on "Submit"

    expect(page).to have_content "The following errors(s) occurred"
  end

  scenario "User submits a blank form" do

    visit root_path

    click_on "Create a new category"

    fill_in "Name", with: ""

    click_on "Submit"

    expect(page).to have_content "The following errors(s) occurred"
  end

end

