class Word < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :word, presence: true, length: { maximum: 100 },
            uniqueness: { scope: [:user_id, :category_id], case_sensitive: false }
  validates :mean, presence: true, length: { maximum: 100 },
            uniqueness: { scope: [:user_id, :category_id], case_sensitive: false }
end
