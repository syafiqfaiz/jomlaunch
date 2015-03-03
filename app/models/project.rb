class Project < ActiveRecord::Base
	belongs_to :user
	validates :project_name, :brief_description, :description, :web_link, presence: true
	validates :web_link, uniqueness: true
end