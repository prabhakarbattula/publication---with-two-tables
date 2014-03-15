class Author < ActiveRecord::Base
	has_many :books
  validates_presence_of :author_name

  def self.search(query)
    where("author_name like ?", "%#{query}%")
  end


end