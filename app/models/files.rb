class Files < ActiveRecord::Base
  attr_accessible :lock, :name, :share, :url, :user
  belongs_to :user
  has_many :filescomment
end
