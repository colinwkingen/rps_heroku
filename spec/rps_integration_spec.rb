require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('rock paper scissors win checker', {:type => :feature}) do
  it('take a rock, paper or scissors input from two players and returns a winner') do
    visit('/')
    fill_in('player_one', :with => 'rock')
    fill_in('player_two', :with => 'paper')
    click_button('Submit')
    expect(page).to have_content('Player two is victorious!')
  end
end
