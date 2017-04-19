require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('scrabble score', {:type => :feature}) do
  it('converts words to scrabble scores') do
    visit('/')
    fill_in('score', :with => 'aa')
    click_button('Calculate')
    expect(page).to have_content(2)
  end
end
