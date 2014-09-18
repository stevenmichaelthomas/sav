class AddPhoneToSupports < ActiveRecord::Migration
  def change
    add_column :supports, :phone, :string
  end
end
