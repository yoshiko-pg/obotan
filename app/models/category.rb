class Category < ActiveRecord::Base
  belongs_to :user
  has_many :words, dependent: :destroy

  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 40 }, 
            uniqueness: { scope: :user_id, case_sensitive: false }
end
