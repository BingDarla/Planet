class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.text :image
      t.integer :user_id
      t.integer :sight_id
      t.timestamps
    end
  end
end
