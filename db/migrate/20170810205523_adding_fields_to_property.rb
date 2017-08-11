class AddingFieldsToProperty < ActiveRecord::Migration[5.1]
  def up
  	add_column("properties", "precio", :decimal)
  	add_column("properties", "titulo", :string)
  end

  def down
  	remove_column("properties","precio")
  	remove_column("properties","title")
  end
end
