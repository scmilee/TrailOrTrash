class TrailsController < ApplicationController
  def new
    @trail = Trail.new
  end

  def create
    @trail = Trail.create(
      name: params[:trail][:name],
    )

    redirect_to trails_path
  end
  
  def index
    @trails = Trail.all
  end

end
