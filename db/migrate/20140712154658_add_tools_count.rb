class AddToolsCount < ActiveRecord::Migration
  def change
    add_column :categories, :tools_count, :integer, :default => 0
  end
end
