class Post < ActiveRecord::Base
  attr_accessible :title, :post
  validates_presence_of :title
end
