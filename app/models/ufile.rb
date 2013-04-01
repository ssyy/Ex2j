class Ufile < ActiveRecord::Base
	attr_accessible :name, :user_id,:src
	belongs_to :user
	has_many :filescomment
	has_attached_file :src
end
