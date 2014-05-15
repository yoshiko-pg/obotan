# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :word do
    user_id 1
    category_id 1
    word "MyString"
    mean "MyString"
    remember_count 1
  end
end
