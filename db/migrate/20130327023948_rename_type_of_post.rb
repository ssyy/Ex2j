class RenameTypeOfPost < ActiveRecord::Migration
  def change
  	rename_column :posts, :type, :ptype
  end
end
