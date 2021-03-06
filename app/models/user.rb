class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible   :email, :password, :password_confirmation, :remember_me
  attr_accessible   :root,:sex,:right,:name,:birth,:image,:face
  has_attached_file :face,:styles=>{:tiny=>"100x100",:small=>"250x250",:medium=>"300x300",:thumb=>"100x100"}
  # attr_accessible :title, :body
  has_many :post
  has_many :ufile
  has_many :comment
  has_many :filescomment
  has_many :type
end
