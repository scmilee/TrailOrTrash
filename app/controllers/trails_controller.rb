class TrailsController < ApplicationController
  def new
    @trail = Trail.new
  end

  def create
    response_errors = {
      :name => 'Your trail must have a name',
      :national_park => 'Your trail needs a nationa park'
    }

    @trail_name = params[:trail][:name]

    response

    if (@trail_name != '')
      @trail = Trail.create(
        name: @trail_name,
        national_park_id: params[:trail][:national_park_id],
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
