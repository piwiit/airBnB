class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :avaible_bed
      t.integer :price
      t.text :description
      t.boolean :has_wifi
      t.text :welcome_message

      t.timestamps
    end
  end
end
