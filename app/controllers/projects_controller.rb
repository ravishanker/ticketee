class ProjectsController < ApplicationController
	def index
		
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(params[:project])
		#flash[:notice] = "Project has been created"
		redirect_to @project, :notice => "Project has been created."
	end

	def show
		@project = Project.find(params[:id])
	end
end
