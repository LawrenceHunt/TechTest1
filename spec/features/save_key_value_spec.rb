require 'spec_helper'

feature 'Save key value pair' do
  scenario 'I can save and retrieve a key and value pair' do
  visit('/set?key1=value1')
  visit('/get?key=key1')
  expect(page).to have_content('value1')
  end
end
