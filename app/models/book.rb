class Book < ActiveRecord::Base
  has_many :reviews
  attr_accessible :name, :pages, :summary
end
