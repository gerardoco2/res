class AddTipopropToProperty < ActiveRecord::Migration[5.1]
  
  def up
  	add_column("properties", "tipo_prop_id", :integer, foreign_key: true)
  end

  def down
  	
  end
end
