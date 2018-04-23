class NationalParksController < ApplicationController

  def new
    @national_park = NationalPark.new
  end

  def create

    @workflow = CreatesNationalpark.new(
      name: params[:national_park][:name]
      )
    @workflow.create

    if @workflow.success?
      redirect_to national_parks_path
    else
      flash[:error] = 'Must enter a Name'
      @national_park = @workflow.nationalpark

      redirect_to new_national_park_path

    end

    def index
      @national_parks = NationalPark.all
    end
  end

end
