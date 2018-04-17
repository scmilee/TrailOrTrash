class TrailsController < ApplicationController
  def new
    @trail = Trail.new
  end

  def create
    @trail_name = params[:trail][:name]

    if (@trail_name != '')
      @trail = Trail.create(

        name: @trail_name,
        
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
