require "application_system_test_case"

class CurrentAffairsTest < ApplicationSystemTestCase
  setup do
    @current_affair = current_affairs(:one)
  end

  test "visiting the index" do
    visit current_affairs_url
    assert_selector "h1", text: "Current Affairs"
  end

  test "creating a Current affair" do
    visit current_affairs_url
    click_on "New Current Affair"

    fill_in "Name", with: @current_affair.name
    fill_in "Post on", with: @current_affair.post_on
    click_on "Create Current affair"

    assert_text "Current affair was successfully created"
    click_on "Back"
  end

  test "updating a Current affair" do
    visit current_affairs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @current_affair.name
    fill_in "Post on", with: @current_affair.post_on
    click_on "Update Current affair"

    assert_text "Current affair was successfully updated"
    click_on "Back"
  end

  test "destroying a Current affair" do
    visit current_affairs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Current affair was successfully destroyed"
  end
end
