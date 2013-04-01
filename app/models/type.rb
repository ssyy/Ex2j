class Type < ActiveRecord::Base
  attr_accessible :name, :selftype
  belongs_to :user
end
