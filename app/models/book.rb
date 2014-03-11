class Book < ActiveRecord::Base
  attr_accessible :name, :pages, :summary
end
