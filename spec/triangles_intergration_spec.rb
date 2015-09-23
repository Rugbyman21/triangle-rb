require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the main page where the side lengths are inputed by the user', {:type => :feature}) do
  it('processes the user entry of the sides and tells the user if is is a triangle or not') do
    visit('/')
    fill_in('a_side', :with => 10)
    fill_in('b_side', :with => 10)
    fill_in('c_side', :with => 10)
    click_button('Submit')
    expect(page).to have_content('These sides make a equilateral')
  end
end
