class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :shelves
  has_many :books, through: :shelves
end
