require 'factory_girl'

FactoryGirl.define do
  factory :category do
    sequence(:name) {|n| "Name #{n}"}
  end

  factory :product do
    sequence(:name) {|n| "Name #{n}"}
    category_id "1"
    sequence(:price) {|n| "10.0#{n}"}
    sequence(:description) {|n| "Description #{n}"}
  end

end
