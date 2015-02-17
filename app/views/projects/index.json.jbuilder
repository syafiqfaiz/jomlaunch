json.array!(@projects) do |project|
  json.extract! project, :id, :project_name, :brief_description, :description, :web_link, :email, :company_name, :team_members, :social_media_link
  json.url project_url(project, format: :json)
end
