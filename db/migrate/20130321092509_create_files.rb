class CreateFiles < ActiveRecord::Migration
  def change
    create_table :files do |t|
      t.string :name
      t.string :url
      t.integer :user
      t.string :lock
      t.string :share

      t.timestamps
    end
  end
end
