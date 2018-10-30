require "application_system_test_case"

class EquipesTest < ApplicationSystemTestCase
  setup do
    @equipe = equipes(:one)
  end

  test "visiting the index" do
    visit equipes_url
    assert_selector "h1", text: "Equipes"
  end

  test "creating a Equipe" do
    visit equipes_url
    click_on "New Equipe"

    fill_in "Descricao", with: @equipe.descricao
    fill_in "Nome", with: @equipe.nome
    click_on "Create Equipe"

    assert_text "Equipe was successfully created"
    click_on "Back"
  end

  test "updating a Equipe" do
    visit equipes_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @equipe.descricao
    fill_in "Nome", with: @equipe.nome
    click_on "Update Equipe"

    assert_text "Equipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Equipe" do
    visit equipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Equipe was successfully destroyed"
  end
end
