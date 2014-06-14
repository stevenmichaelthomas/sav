class CreateResources < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :title
      t.text :summary
      t.string :url
      t.string :phone

      t.timestamps
    end
  end
end
