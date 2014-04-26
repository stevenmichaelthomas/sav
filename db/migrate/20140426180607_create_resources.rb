class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.text :summary
      t.string :url
      t.string :phone

      t.timestamps
    end
  end
end
