class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :shelves
  has_many :books, through: :shelves

  validates :password, length: { minimum: 0 }
  validates :password, confirmation: true
  validates :first_name, :email, :password, :password_confirmation, presence: true

  validates :email, uniqueness: true

	def copy_all_shelves_to(user)
		shelves.each do |shelf|
			shelf.copy_to(user)
		end
	end
end
