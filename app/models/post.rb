class Post < ActiveRecord::Base
  attr_accessible :title, :post
  validates_presence_of :title
  def posted_at
    return self.created_at.getlocal
  end
end
