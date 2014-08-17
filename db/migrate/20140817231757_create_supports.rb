class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.string :name
      t.string :email
      t.string :program
      t.text :why
      t.text :experience
      t.text :gain
      t.text :strengths
      t.text :understanding
      t.text :challenges
      t.boolean :training, default: false
      t.boolean :responsibilities, default: false
      t.boolean :honorarium, default: false

      t.timestamps
    end
  end
end
