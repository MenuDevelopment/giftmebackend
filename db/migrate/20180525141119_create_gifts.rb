class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|
      t.references :user, foreign_key: true
      t.string :item
      t.float :price

      t.timestamps
    end
  end
end
