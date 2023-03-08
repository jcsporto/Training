class CreateStreets < ActiveRecord::Migration[7.0]
  def change
    create_table :streets do |t|
      t.string :city
      t.string :state
      t.string :zip_code
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
