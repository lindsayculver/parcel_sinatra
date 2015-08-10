require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("Parcel '/result' path", {:type => :feature}) do
  it('returns the cost of shipping a package') do
    visit('/')
    fill_in('length', :with => '5')
    fill_in('height', :with => '4')
    fill_in('width', :with => '3')
    fill_in('speed', :with => '2')
    fill_in('weight', :with => '10')
    fill_in('gift', :with => '1')
    click_button('Get Shipping Cost')
    expect(page).to have_content("150")
  end
end
