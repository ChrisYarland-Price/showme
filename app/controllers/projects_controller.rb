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
    published_check
  end

  # GET /projects/new
  def new
    spartan_check
    @project = Project.new
    @new_form = true
  end

  # GET /projects/1/edit
  def edit
    spartan_check
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.create!(project_params)
    spartans_project_params[:spartan_ids].drop(1).each{ |s_id|
      spartan = Spartan.find(s_id)
      spartan.projects.push(@project)
    }
    
    redirect_to @project
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    @project.update(project_params)
    spartans_project_params[:spartan_ids].slice!(0)
    @project.spartan_ids = spartans_project_params[:spartan_ids]
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

    def spartan_check 
      if spartan_signed_in? 
        if current_spartan.admin 
          

        elsif @project
          if @project.published != true
            @project.spartans.each { |i|   
              if current_spartan.id === i.id
              else
                redirect_to '/'
              end 
            }
          end
        end 
      else
        redirect_to '/'
      end  
    end

    def published_check
      if @project.published === true

      else
        spartan_check
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :url, :image, :summary, :technologies, :published)
    end

    def spartans_project_params
      params.require(:project).permit(:spartan_ids => [])
    end
end
