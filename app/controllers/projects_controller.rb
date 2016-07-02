class ProjectsController < ApplicationController
  def index
    @projects = Project.where(:bigProject => false)
    @bigProjects = Project.order("created_at DESC").page(params[:page]).per(4)
  end
end
