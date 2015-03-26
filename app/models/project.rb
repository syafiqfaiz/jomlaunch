class Project < ActiveRecord::Base
	belongs_to :user
	validates :project_name, :brief_description, :description, presence: true
end