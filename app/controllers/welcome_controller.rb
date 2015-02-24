class WelcomeController < ApplicationController
  def index
  	if session[:user_id] != nil
  		@user = User.find(session[:user_id])
  	end
  	@featured_project = Project.order("RANDOM()").first
  	@projects = Project.all
  end
end
