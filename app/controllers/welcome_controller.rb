class WelcomeController < ApplicationController
  def index
		@featured_project = Project.order("RANDOM()").first
  	@projects = Project.all
  end
end
