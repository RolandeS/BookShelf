class Book < ActiveRecord::Base
	belongs_to :shelf

  validates :name, uniqueness: {scope: :shelf_id, :case_sensitive => false}, length: { maximum: 20 }
  validates :note, length: {maximum: 150}
  validates :name, :link, presence: true

end
