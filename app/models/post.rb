class Post < ActiveRecord::Base
  attr_accessible :body, :title, :author
  validates :body, presence: true 
  validates :title, presence: true
  validates :author, presence: true
end
