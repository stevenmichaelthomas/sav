class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :text
      t.string :name

      t.timestamps
    end
  end
end
