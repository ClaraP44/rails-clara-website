class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @next_project = Project.where("id > ?", @project.id).order(id: :asc).first
    if @next_project.nil?
      @next_project = Project.order(id: :asc).first
    end
  end

end
