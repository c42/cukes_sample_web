FactoryGirl.define do
  factory :admin_user do
    sequence(:email){|n| "email-#{n}@example.com" }
    password 'oogabooga'
    password_confirmation 'oogabooga'
  end

  factory :product do
    sequence(:name){|n| "product-#{n}" }
    price 12.34
    sequence(:item_code){|n| "ITEM_0#{n}" }
    category 'sample'
  end
end
