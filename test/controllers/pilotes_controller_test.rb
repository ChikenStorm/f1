require "test_helper"

class PilotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pilote = pilotes(:one)
  end

  test "should get index" do
    get pilotes_url
    assert_response :success
  end

  test "should get new" do
    get new_pilote_url
    assert_response :success
  end

  test "should create pilote" do
    assert_difference("Pilote.count") do
      post pilotes_url, params: { pilote: { actually_driver: @pilote.actually_driver, age: @pilote.age, description: @pilote.description, first_race: @pilote.first_race, nom: @pilote.nom, photo: @pilote.photo, prenom: @pilote.prenom, string: @pilote.string, team: @pilote.team, title: @pilote.title } }
    end

    assert_redirected_to pilote_url(Pilote.last)
  end

  test "should show pilote" do
    get pilote_url(@pilote)
    assert_response :success
  end

  test "should get edit" do
    get edit_pilote_url(@pilote)
    assert_response :success
  end

  test "should update pilote" do
    patch pilote_url(@pilote), params: { pilote: { actually_driver: @pilote.actually_driver, age: @pilote.age, description: @pilote.description, first_race: @pilote.first_race, nom: @pilote.nom, photo: @pilote.photo, prenom: @pilote.prenom, string: @pilote.string, team: @pilote.team, title: @pilote.title } }
    assert_redirected_to pilote_url(@pilote)
  end

  test "should destroy pilote" do
    assert_difference("Pilote.count", -1) do
      delete pilote_url(@pilote)
    end

    assert_redirected_to pilotes_url
  end
end
