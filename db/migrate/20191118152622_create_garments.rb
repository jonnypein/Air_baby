class CreateGarments < ActiveRecord::Migration[5.2]
  def change
    create_table :garments do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :location
      t.string :description
      t.integer :daily_price

      t.timestamps
    end
  end
end
