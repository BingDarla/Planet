class CreateSights < ActiveRecord::Migration[5.1]
  def change
    create_table :sights do |t|
      t.text :name
      t.text :location
      t.text :image
      t.text :info
      t.text :category
      t.text :latitude
      t.text :longtitude
      t.integer :country_id
      t.timestamps
    end
  end
end
