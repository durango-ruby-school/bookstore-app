class Review < ActiveRecord::Base
  belongs_to :book
  attr_accessible :body, :name, :rating
  
  validates_presence_of :name, :body, :rating
end
