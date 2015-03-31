class ChangePhoneNumberInProjetsToString < ActiveRecord::Migration
  def change
  	change_column :projects, :phone_number, :string
  end
end
