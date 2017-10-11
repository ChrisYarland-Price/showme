class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit]

  # GET /projects
  # GET /projects.json
  def home
    @projects = Project.all.where('published = true')
    @header = "Published Projects"
  end

  # GET /projects
  # GET /projects.json
  def index
    if spartan_signed_in?
      if current_spartan.admin
        @projects = Project.all()
        @header = "All Projects"
      else
        @projects = current_spartan.projects.all()
        @header = "Your Projects"
      end
    else
    redirect_to '/home'
    end
        
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    spartan = Spartan.find(spartans_project_params[:spartan_id])
    @project = Project.create!(project_params)
    SpartansProject.create!(spartan_id: spartan.id, project_id: @project.id)

    redirect_to @project
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    spartan = Spartan.find(params[:spartan_id])
    @project = spartan.projects.find(params[:id])
    @project.update(project_params)
    redirect_to @project
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    Spartan.find(params[:spartan_id]).projects.destroy(params[:id])
    redirect_to '/'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :url, :image, :summary, :technologies, :published)
    end
    def spartans_project_params
      params.require(:project).permit(:spartan_id)
    end
end
