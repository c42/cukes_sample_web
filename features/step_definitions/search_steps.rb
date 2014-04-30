Then(/^I should see (\d+) products$/) do |product_count|
  expect(page).to have_selector('table > tbody > tr', :count => product_count)
end