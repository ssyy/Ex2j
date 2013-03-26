class AddRightToUser < ActiveRecord::Migration
  def change
    add_column :users, :right, :integer
  end
end
