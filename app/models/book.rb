class Book < ActiveRecord::Base
  has_many :reviews
  attr_accessible :name, :pages, :summary
  
  validates_presence_of :name
  validates_numericality_of :pages, greater_than: 0, allow_blank: true
end
