namespace :db_setup do
  desc 'Clean old sessions'
  task :all => :environment do
    Product.all.each(&:destroy)
    Product.create!(:name => 'Pickle', :price => 12.23, :description  => "It's a mango pickle.", :item_code => 'ITEM_1')
    Product.create!(:name => 'Jar', :price => 13.23, :description  => "It's a Jar.", :item_code => 'ITEM_2')
    Product.create!(:name => 'Cucumber', :price => 22.23, :description  => "It's a Cucumber.", :item_code => 'ITEM_3')
    Product.create!(:name => 'Knife', :price => 65.23, :description  => "It's a Knife.", :item_code => 'ITEM_4')
  end
end