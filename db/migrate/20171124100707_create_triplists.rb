class CreateTriplists < ActiveRecord::Migration[5.1]
  def change
    create_table :triplists do |t|
      t.text :name
      t.text :user_id
      t.timestamps
    end
  end
end
