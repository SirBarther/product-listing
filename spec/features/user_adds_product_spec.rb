require 'rails_helper'

feature "User creates a product", %Q{

  User Story:

  As a user
  I want to add a product
  So that others can see how much it costs

  Acceptance Criteria:

  [] - I must specify a name of the product,
        a price, a category, and an optional description
} do

  scenario "User creates a new product" do
    category = FactoryGirl.create(:category)
    product = FactoryGirl.build(:product)

    visit root_path

    click_on category.name

    click_on "New!"

    fill_in "Name", with: product.name
    fill_in "Price", with: product.price

    click_on "Submit"

    expect(page).to have_content "Success!"
  end

  scenario "User fails to input a valid product" do

    category = FactoryGirl.create(:category)

    visit root_path

    click_on category.name

    click_on "New!"

    fill_in "Price", with: "a"

    click_on "Submit"

    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Name is too short"
    expect(page).to have_content "Price is not a number"
  end
end
