require "application_system_test_case"

class PromocodesTest < ApplicationSystemTestCase
  setup do
    @promocode = promocodes(:one)
  end

  test "visiting the index" do
    visit promocodes_url
    assert_selector "h1", text: "Promocodes"
  end

  test "creating a Promocode" do
    visit promocodes_url
    click_on "New Promocode"

    fill_in "Code hashtag", with: @promocode.code_hashtag
    fill_in "Code title", with: @promocode.code_title
    click_on "Create Promocode"

    assert_text "Promocode was successfully created"
    click_on "Back"
  end

  test "updating a Promocode" do
    visit promocodes_url
    click_on "Edit", match: :first

    fill_in "Code hashtag", with: @promocode.code_hashtag
    fill_in "Code title", with: @promocode.code_title
    click_on "Update Promocode"

    assert_text "Promocode was successfully updated"
    click_on "Back"
  end

  test "destroying a Promocode" do
    visit promocodes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Promocode was successfully destroyed"
  end
end
