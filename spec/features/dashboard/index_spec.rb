require 'rails_helper'

context "when I visit the dashboard_index_path" do
  describe "the page should display certain features" do
    before :each do
      visit dashboard_index_path
    end

    it "displays the correct header for weather dashboard" do
      expect(page).to have_content("Look up some weather bro")
    end

    it "displays a text field and button to search" do
      expect(page).to have_field('city')
      expect(page).to have_button("Search")
    end
  end
end
