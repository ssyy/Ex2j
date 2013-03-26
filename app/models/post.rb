class Post < ActiveRecord::Base
  attr_accessible :content, :title
  belongs_to :user
  has_many :comment
end
