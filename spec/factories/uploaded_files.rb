# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :uploaded_file do
    file "MyString"
    device nil
  end
end
