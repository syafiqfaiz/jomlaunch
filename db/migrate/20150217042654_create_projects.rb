class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name, null: false
      t.string :brief_description, null: false
      t.string :description, null: false
      t.string :web_link, null: false
      t.string :email, null: false
      t.string :company_name
      t.string :team_members, array: true, default: []
      t.string :social_media_link
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
