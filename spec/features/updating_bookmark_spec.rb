feature 'updating bookmark' do
  scenario 'user updates title of bookmark' do
    bookmark = Bookmark.create(url: "https://www.google.com", title: "Google")
    visit '/bookmarks'
    expect(page).to have_link("Google", href: "https://www.google.com")

    click_button 'EDIT'

    expect(current_path).to eq "/bookmarks/#{bookmark.id}/edit"

    fill_in 'url', with: "https://www.youtube.com"
    fill_in 'title', with: "YouTube"
    click_button 'Submit'

    expect(current_path).to eq "/bookmarks"
    expect(page).to have_link("Google", href: "https://www.google.com")
    expect(page).not_to have_link("YouTube", href: "https://www.youtube.com")
  end
end
