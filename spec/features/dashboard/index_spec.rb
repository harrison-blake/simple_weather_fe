require 'rails_helper'

describe "when I visit the dashboard_index_path" do
  describe "happy path" do
    before :each do
      visit dashboard_index_path
    end
    describe "the page should display certain features" do
      it "displays the correct header for weather dashboard" do
        expect(page).to have_content("Look up some weather bro")
      end

      it "displays a text field and button to search" do
        expect(page).to have_field('city')
        expect(page).to have_button("search")
      end
    end

    describe "the search button should take you to a new page" do
      it "redirects the user to the weather show page" do
        fill_in 'city', with: 'Denver'
        click_button('search')

        expect(current_path).to eq(weather_index_path)
      end
    end
  end
end
