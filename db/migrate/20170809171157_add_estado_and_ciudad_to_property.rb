class AddEstadoAndCiudadToProperty < ActiveRecord::Migration[5.1]
  def up
  	add_column("properties", "estado_id", :integer)
  	add_column("properties", "ciudad_id", :integer)
  end

  def down
  	remove_column("properties","estado_id")
  	remove_column("properties", "ciudad_id")
  end
end
