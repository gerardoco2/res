class CreateTipoProps < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_props do |t|
      t.string :nombre
      t.string :status

      t.timestamps
    end
  end
end
