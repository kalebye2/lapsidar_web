require "application_system_test_case"

class CrpRegiaosTest < ApplicationSystemTestCase
  setup do
    @crp_regiao = crp_regiaos(:one)
  end

  test "visiting the index" do
    visit crp_regiaos_url
    assert_selector "h1", text: "Crp Regiaos"
  end

  test "creating a Crp regiao" do
    visit crp_regiaos_url
    click_on "New Crp Regiao"

    fill_in "Uf", with: @crp_regiao.uf_id
    click_on "Create Crp regiao"

    assert_text "Crp regiao was successfully created"
    click_on "Back"
  end

  test "updating a Crp regiao" do
    visit crp_regiaos_url
    click_on "Edit", match: :first

    fill_in "Uf", with: @crp_regiao.uf_id
    click_on "Update Crp regiao"

    assert_text "Crp regiao was successfully updated"
    click_on "Back"
  end

  test "destroying a Crp regiao" do
    visit crp_regiaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crp regiao was successfully destroyed"
  end
end
