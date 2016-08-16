class ProjectsController < ApplicationController
  def index
    @projects = Project.where(:bigProject => false)
    @bigProjects = Project.where(:bigProject => true).order("created_at DESC").page(params[:page]).per(4)
  end
end
