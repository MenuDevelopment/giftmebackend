class CreatePledges < ActiveRecord::Migration[5.1]
  def change
    create_table :pledges do |t|
      t.references :user, foreign_key: true
      t.references :gift, foreign_key: true
      t.decimal :amount

      t.timestamps
    end
  end
end
