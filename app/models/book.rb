class Book < ActiveRecord::Base
	belongs_to :author

  def self.search(query)
    where("book_name like ?", "%#{query}%")
  end

end
