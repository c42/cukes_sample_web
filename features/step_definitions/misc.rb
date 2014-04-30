Given(/^there is a default admin user$/) do
  AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
end

Given(/I am logged in as an admin/) do
  user = AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
  visit new_admin_user_session_path
  fill_in 'Email', :with => user.email
  fill_in 'Password', :with => 'password'
  click_button 'Login'
  expect(current_path).to eq(admin_root_path)
end

And(/^there are (\d+) (.*) category products$/) do |count, category|
  count.to_i.times.each do
    FactoryGirl.create(:product, :category => category)
  end
end