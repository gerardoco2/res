class AddOwnerToPropery < ActiveRecord::Migration[5.1]
  def up
  	add_column("properties", "owner_id", :integer)
  end

  def down
  	
  end
end
