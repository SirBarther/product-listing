require 'factory_girl'

FactoryGirl.define do |variable|
  factory :category do
    sequence(:name) {|n| "Name #{n}"}
  end
end
