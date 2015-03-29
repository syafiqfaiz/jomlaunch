class AdminDashboardController < ApplicationController
	before_action :authorize
  def index
  	@projects = Project.all
  end

  def show
  	@project = Project.find(params[:project_id])
  end

  private
  
  def authorize
  	admin = ENV['ADMIN'].split(',')
  	if admin.include? current_user.email
  		true
  	else
  		redirect_to root_path, notice: "You are not authorized to acces Admin Dashboard"
  	end
  end
end
