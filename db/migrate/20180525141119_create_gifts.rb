class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|
      t.string :item
      t.decimal :price

      t.timestamps
    end
  end
end
