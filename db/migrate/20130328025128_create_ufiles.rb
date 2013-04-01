class CreateUfiles < ActiveRecord::Migration
  def change
    create_table :ufiles do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
