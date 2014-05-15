class User < ActiveRecord::Base
  devise :omniauthable

  has_many :categories, dependent: :destroy
  has_many :words, dependent: :destroy

  before_save {  }

  validates :provider, presence: true
  validates :uid, presence: true
  validates :user_name, presence: true
end
