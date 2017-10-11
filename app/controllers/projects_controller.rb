class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update]

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
    @new_form = true
  end

  # GET /projects/1/edit
  def edit
    @new_form = false
  end

  # POST /projects
  # POST /projects.json
  def create
    spartan = Spartan.find(spartans_project_params[:spartan_id])
    @project = Project.create!(project_params)
    spartan.projects.push(@project)
    redirect_to @project
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    # spartan = Spartan.find(spartans_project_params[:spartan_id])
    @project.update(project_params)
    # @project.spartans[0].update_attribute(:spartan_id, spartans_project_params[:spartan_id])
    redirect_to @project
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    Project.destroy(params[:id])
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
