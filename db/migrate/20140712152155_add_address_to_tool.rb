class AddAddressToTool < ActiveRecord::Migration
  def change
    add_column :tools, :address, :string
  end
end
