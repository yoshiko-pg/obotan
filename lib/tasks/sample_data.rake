namespace :db do
  desc "Fill database with sample data"
  task populaate: :environment do
    user = User.create!(provide: 'twitter', uid: '12345678')
    3.times {|n| user.categories.create!(name: "カテゴリ#{n}") }
    Category.find_by_user_id(user).each do |c|
      user.words.create!(category_id: c,
                         name: Faker::Lorem.sentence(1),
                         mean: Faker::Lorem.sentence(2))
    end
  end
end
