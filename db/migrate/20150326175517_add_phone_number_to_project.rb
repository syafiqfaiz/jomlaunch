class AddPhoneNumberToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :phone_number, :integer
  	remove_column :users, :phone_number
  end
end
