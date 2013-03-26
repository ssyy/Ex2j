class AddImageToUser < ActiveRecord::Migration
  def change
    add_column :users, :image, :url
  end
end
