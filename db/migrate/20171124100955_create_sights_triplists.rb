class CreateSightsTriplists < ActiveRecord::Migration[5.1]
  def change
    create_table :sights_triplists do |t|
      t.integer :triplist_id
      t.integer :sight_id
      t.timestamps
    end
  end
end
