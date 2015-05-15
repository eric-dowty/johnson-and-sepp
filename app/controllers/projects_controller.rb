class ProjectsController < ApplicationController

  def index
    @projects_data = Project.data
  end

end