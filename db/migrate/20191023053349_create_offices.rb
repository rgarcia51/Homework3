class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.references :physician, null: false, foreign_key: true
      t.string :street
      t.string :zip
      t.integer :phone

      t.timestamps
    end
  end
end
