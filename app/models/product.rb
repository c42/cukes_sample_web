class Product < ActiveRecord::Base
  validates_presence_of :name, :price, :item_code
  validates_numericality_of :price
end
