class CreateCiudads < ActiveRecord::Migration[5.1]
  def change
    create_table :ciudads do |t|
      t.string :nombre
      t.string :codigo_area
      t.string :status
      t.references :estado, foreign_key: true

      t.timestamps
    end
  end
end
