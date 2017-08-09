class CreateOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :owners do |t|
      t.string :nombre
      t.string :apellido
      t.date :fecha_nac
      t.string :email
      t.string :telefono
      t.string :sexo

      t.timestamps
    end
  end
end
