class Review < ActiveRecord::Base
  belongs_to :book
  attr_accessible :body, :name, :rating
end
