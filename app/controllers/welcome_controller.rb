class WelcomeController < ApplicationController
  def index
		@featured_project = Project.order("RANDOM()").first
  	@projects = Project.all
  	@number = @projects.count
  end
end
