class AddRootToUser < ActiveRecord::Migration
  def change
    add_column :users, :root, :integer
  end
end
