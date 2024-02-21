require "application_system_test_case"

class PilotesTest < ApplicationSystemTestCase
  setup do
    @pilote = pilotes(:one)
  end

  test "visiting the index" do
    visit pilotes_url
    assert_selector "h1", text: "Pilotes"
  end

  test "should create pilote" do
    visit pilotes_url
    click_on "New pilote"

    check "Actually driver" if @pilote.actually_driver
    fill_in "Age", with: @pilote.age
    fill_in "Description", with: @pilote.description
    fill_in "First race", with: @pilote.first_race
    fill_in "Nom", with: @pilote.nom
    fill_in "Photo", with: @pilote.photo
    fill_in "Prenom", with: @pilote.prenom
    fill_in "String", with: @pilote.string
    fill_in "Team", with: @pilote.team
    fill_in "Title", with: @pilote.title
    click_on "Create Pilote"

    assert_text "Pilote was successfully created"
    click_on "Back"
  end

  test "should update Pilote" do
    visit pilote_url(@pilote)
    click_on "Edit this pilote", match: :first

    check "Actually driver" if @pilote.actually_driver
    fill_in "Age", with: @pilote.age
    fill_in "Description", with: @pilote.description
    fill_in "First race", with: @pilote.first_race
    fill_in "Nom", with: @pilote.nom
    fill_in "Photo", with: @pilote.photo
    fill_in "Prenom", with: @pilote.prenom
    fill_in "String", with: @pilote.string
    fill_in "Team", with: @pilote.team
    fill_in "Title", with: @pilote.title
    click_on "Update Pilote"

    assert_text "Pilote was successfully updated"
    click_on "Back"
  end

  test "should destroy Pilote" do
    visit pilote_url(@pilote)
    click_on "Destroy this pilote", match: :first

    assert_text "Pilote was successfully destroyed"
  end
end
