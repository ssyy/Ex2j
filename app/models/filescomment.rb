class Filescomment < ActiveRecord::Base
  attr_accessible :content, :files_id, :name
  belongs_to :files
  belongs_to :user
end
