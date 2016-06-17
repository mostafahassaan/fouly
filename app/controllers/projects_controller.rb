class ProjectsController < ApplicationController
  def index
    @projects = Project.where(:bigProject => false)
    @bigProjects = Project.where(:bigProject => true)
  end
end
