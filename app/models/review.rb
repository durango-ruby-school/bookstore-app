class Review < ActiveRecord::Base
  belongs_to :book
  attr_accessible :body, :name, :rating
  
  validates_presence_of :name, :body, :rating
  validates_numericality_of :rating, only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5
end
