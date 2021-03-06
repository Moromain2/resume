class ProjectsController < ApplicationController
  http_basic_authenticate_with :name => 'admin', :password => 'root', :except => [:index, :show]
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.save
    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to @project
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to :action => :index, status: 303
  end

  private
    def project_params
      params.require(:project).permit(:cover, :title, :tag, :intro, :body)
    end
end
