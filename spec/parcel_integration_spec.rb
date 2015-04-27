require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe("the shipping cost path", {:type => :feature}) do
  it('returns shipping cost for package properties') do
    visit ('/')
    fill_in('length', :with => 5)
    fill_in('width', :with => 2)
    fill_in('height', :with => 5)
    fill_in('weight', :with => 2)
    fill_in('distance', :with => 10)
    check('gift-wrapping')
    click_button('Ship!')
    expect(page).to have_content(3.2)
  end
end
