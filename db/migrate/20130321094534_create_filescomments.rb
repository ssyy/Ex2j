class CreateFilescomments < ActiveRecord::Migration
  def change
    create_table :filescomments do |t|
      t.string :name
      t.integer :files_id
      t.text :content

      t.timestamps
    end
  end
end
