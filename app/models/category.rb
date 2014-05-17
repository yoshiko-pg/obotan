class Category < ActiveRecord::Base
  belongs_to :user
  has_many :words, dependent: :destroy

  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 40 }, 
            uniqueness: { case_sensitive: false }
end
