class AddTeamMembersToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :team_members, :text, array:true, default: []
  end
end
