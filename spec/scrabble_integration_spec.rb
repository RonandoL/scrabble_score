require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user entry and returns the scrabble score for the entered word') do
    visit('/')
    fill_in('score', :with => 'hello')
    click_button('Send')
    expect(page).to have_content('8')
  end
end
