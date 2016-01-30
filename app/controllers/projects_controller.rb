class ProjectsController < ApplicationController
  def index
    @projects = Project.all.order("created_at desc").paginate(page: params[:page], per_page: 10)
  end
end
