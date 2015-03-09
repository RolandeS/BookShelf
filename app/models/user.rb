class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :shelves
  has_many :books, through: :shelves

  validates :password, length: { minimum: 0 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
end
