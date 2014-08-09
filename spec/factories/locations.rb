# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    device_id 1
    latitude "9.99"
    longitude "9.99"
    altitude 1.5
    accuracy 1.5
    provider "MyString"
    time "2014-08-09 12:14:21"
  end
end
