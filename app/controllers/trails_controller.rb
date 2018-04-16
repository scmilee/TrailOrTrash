class TrailsController < ApplicationController
  def new
    @trail = Trail.new
  end

  def create
    if (params[:trail][:name] != '')
      @trail = Trail.create(
        name: params[:trail][:name],
      )

      redirect_to trails_path      
    else
      flash[:error] = 'Your trail must have a name'
      redirect_to new_trail_path
    end
  end
  
  def index
    @trails = Trail.all
  end

end
