class ChangeTeamMembersInProjec < ActiveRecord::Migration
  def change
  	change_column :projects, :team_members, :string
  end
end
