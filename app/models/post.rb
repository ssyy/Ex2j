class Post < ActiveRecord::Base
  attr_accessible :content, :title, :ptype,:type_id
  belongs_to :user
  has_many :comment
end
