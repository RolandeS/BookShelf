class ActiveRecord::Base
	def html_id
		"#{self.class.name}-#{id}"
	end
end

class Shelf < ActiveRecord::Base
	belongs_to :user
	has_many :books
end
