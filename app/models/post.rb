class Post < ActiveRecord::Base
  attr_accessible :title, :post
  validates_presence_of :title
  def posted_at
    return self.created_at.getlocal
  end
  def short_post
    if self.post.length > 100
      (self.post.index('[code')?self.post.slice(0..self.post.index('[code')-3):self.post.slice(0..100)) + "..."
    else
      self.post
    end
  end
end
