class ActiveRecord::Base
	def html_id
		"#{self.class.name}-#{id}"
	end
end

class Shelf < ActiveRecord::Base
	belongs_to :user
	has_many :books
	
	validates :name, uniqueness: {scope: :user_id}

	def copy_to(user)
		new_shelf = dup
		new_shelf.user = user
		new_shelf.save

		books.each do |book|
			new_book = book.dup
			new_book.shelf = new_shelf
			new_book.save
		end
	end

end
