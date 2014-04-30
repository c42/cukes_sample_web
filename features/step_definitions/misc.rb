Given(/^there is a default admin user$/) do
  AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
end