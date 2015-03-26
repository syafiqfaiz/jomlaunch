class ChangeTeamMemberDefault < ActiveRecord::Migration
  def change
  	change_column_default(:projects, :team_members, nil)
  end
end
