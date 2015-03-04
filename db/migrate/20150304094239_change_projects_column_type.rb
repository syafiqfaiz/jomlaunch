class ChangeProjectsColumnType < ActiveRecord::Migration
  def change
  	change_column :projects, :team_members, :text		
  end
end
