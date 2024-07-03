require "rails_helper"

RSpec.describe "Discover page" do

  describe '#us 1' do
    it 'has a button for top rated movies, a text fiels to search movies by title and a search button' do
      # As a user,
      @us1 = User.create(name: "martin", email: "martin123@gmail.com" )

      visit user_discover_index_path(@us1)
      # When I visit the '/users/:id/discover' path (where :id is the id of a valid user),
      # I should see
      # - a Button to Discover Top Rated Movies
      expect(page).to have_button("Top Rated Movies")
      # - a text field to enter keyword(s) to search by movie title
      expect(page).to have_field("Search Movie By Title")
      # - a Button to Search by Movie Title
      expect(page).to have_button("Search Movie")
save_and_open_page
    end
  end
end