require 'pg'

feature 'Viewing bookmarks' do
  scenario 'Visiting /bookmarks shows me all the bookmarks' do
    # Add the test data
    Bookmark.create(url: "http://makersacademy.com")
    Bookmark.create(url: "http://destroyallsoftware.com")
    Bookmark.create(url: "http://google.com")

    visit('/bookmarks')

    expect(page).to have_content "http://makersacademy.com"
    expect(page).to have_content "http://destroyallsoftware.com"
    expect(page).to have_content "http://google.com"
  end
end