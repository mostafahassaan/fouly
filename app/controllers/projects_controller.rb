class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @subprojects = Subproject.where(:bigProject => true).order("created_at DESC").page(params[:page]).per(4)
  end

  def show
    if (params[:id])
      @projects = Project.all
      @project = Project.find(params[:id])
      @subprojects = Subproject.where(project_id: @project.id).order("created_at DESC").page(params[:page]).per(4)
    else
      @projects = Project.all
      @subprojects = Subproject.where(:bigProject => true).order("created_at DESC").page(params[:page]).per(4)
    end
  end
end
