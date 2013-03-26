class AddUserToComment < ActiveRecord::Migration
  def change
    add_column :comments, :userid, :string
  end
end
