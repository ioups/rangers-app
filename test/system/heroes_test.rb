require "application_system_test_case"

class HeroesTest < ApplicationSystemTestCase

  setup do
    @hero = heroes(:first) # Reference to the first fixture hero
  end

  test "Creating a new hero" do
    visit heroes_path

    assert_selector "h1", text: "Heroes"

    click_on "New hero"
    assert_selector "h1", text: "New Hero"

    fill_in "Name", with: "Test Hero"
    click_on "Create hero"

    assert_selector "h1", text: "Heroes"
    assert_text "Test Hero"
  end

  test 'showing a quote' do
    visit heroes_path
    click_link @hero.name

    assert_selector "h1", text: @hero.name
  end

  test 'updating a hero' do
    visit @heroes_path
    assert_selector "h1", text:'Heroes'

    click_on "Edit", match: :first
    assert_selector "h1", text: "Edit hero"

    fill_in "name", with: "Updated Hero"
    click_on "Update hero"

    assert_selector "h1", text: "Heroes"
    assert_text "Updated Hero"
  end

  test ' Destroying a hero' do
    visit heroes_path
    assert_text @hero.name

    click_on "Delete", match: :first
    assert_no_text @hero.name
  end
end
