require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the home page" do
    visit root_path

    assert_selector "h1", text: "Flats"
  end

  test "visiting one flat's page" do
    visit ????_path

    assert_selector "h1", text: "Flats"
  end
end
