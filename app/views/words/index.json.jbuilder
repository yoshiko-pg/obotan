json.array!(@words) do |word|
  json.extract! word, :id, :user_id, :category_id, :word, :mean, :remember_count
  json.url word_url(word, format: :json)
end
