require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("chanimal shipping path", {:type => :feature}) do
  it('successfully pulls up index page') do
    visit('/')
    expect(page).to have_content('Chanimal Schipping')
  end

  it('successfully displays cost of shipping') do
    visit('/')
    fill_in('length', :with => '2')
    fill_in('width', :with => '3')
    fill_in('height', :with => '4')
    fill_in('weight', :with => '6')
    select('Cheetah', :from => "method")
    fill_in('distance', :with => '100')
    click_button('Submit')
    expect(page).to have_content('$17.40')
  end

end
