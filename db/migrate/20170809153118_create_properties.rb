class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :direccion
      t.string :descripcion
      t.integer :nro_hab
      t.integer :nro_bannos
      t.decimal :area
      t.string :status

      t.timestamps
    end
  end
end
