class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @subprojects = Subproject.where(:bigProject => true).order("created_at DESC").page(params[:page]).per(4)
    @images = get_images (@subprojects)
  end

  def show
    if (params[:id] = 0)
      @projects = Project.all
      @subprojects = Subproject.all.order("created_at DESC").page(params[:page]).per(4)
      @images = get_images (@subprojects)
    else
      @projects = Project.all
      @project = Project.find(params[:id])
      @subprojects = Subproject.where(project_id: @project.id).order("created_at DESC").page(params[:page]).per(4)
      @images = get_images (@subprojects)
    end
  end

  def get_images (subprojects)
    images ||= []
    subprojects.each do |project|
      images << Image.where(subproject_id: project.id).first
    end
    return images
  end
end
