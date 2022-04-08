class CreateLands < ActiveRecord::Migration[6.0]
  def change
    create_table :lands do |t|
      t.integer :platform_id,   null: false
      t.integer :location_x,    null: false
      t.integer :location_y,    null: false
      t.integer :fee_num,       null: false
      t.integer :fee_mdy_id,    null: false
      t.integer :term_num,      null: false
      t.integer :term_mdy_id,   null: false

      t.references :user,       null: false, foreign_key: true

      t.timestamps
    end
  end
end
