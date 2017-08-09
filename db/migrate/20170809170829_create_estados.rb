class CreateEstados < ActiveRecord::Migration[5.1]
  def change
    create_table :estados do |t|
      t.string :nombre
      t.string :zip
      t.string :status

      t.timestamps
    end
  end
end
