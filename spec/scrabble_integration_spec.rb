require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user entry and returns the scrabble score for the entered word') do
    visit('/')
    fill_in('title', :with => 'green eggs and ham')
    click_button('Send')
    expect(page).to have_content('Green Eggs and Ham')
  end
end
