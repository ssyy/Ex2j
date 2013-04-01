class Filescomment < ActiveRecord::Base
  attr_accessible :content, :ufile_id, :name
  belongs_to :ufile
  belongs_to :user
end
