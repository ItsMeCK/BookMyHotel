require "application_system_test_case"

class XyzsTest < ApplicationSystemTestCase
  setup do
    @xyz = xyzs(:one)
  end

  test "visiting the index" do
    visit xyzs_url
    assert_selector "h1", text: "Xyzs"
  end

  test "creating a Xyz" do
    visit xyzs_url
    click_on "New Xyz"

    fill_in "Signature", with: @xyz.signature
    click_on "Create Xyz"

    assert_text "Xyz was successfully created"
    click_on "Back"
  end

  test "updating a Xyz" do
    visit xyzs_url
    click_on "Edit", match: :first

    fill_in "Signature", with: @xyz.signature
    click_on "Update Xyz"

    assert_text "Xyz was successfully updated"
    click_on "Back"
  end

  test "destroying a Xyz" do
    visit xyzs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Xyz was successfully destroyed"
  end
end
