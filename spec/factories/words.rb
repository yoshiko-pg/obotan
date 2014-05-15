# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :word do
    category_id 1
    user_id 1
    word "remember"
    mean "覚える"
    remember_count 0
  end
end
