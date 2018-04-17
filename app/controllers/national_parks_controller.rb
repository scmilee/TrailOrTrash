class NationalParksController < ApplicationController

  def new
    @national_park = NationalPark.new
  end

  def create

    if (params[:national_park][:name] != '')
      @national_park = NationalPark.create(
        name: params[:national_park][:name],
        )
      @national_park.save
      redirect_to national_parks_path
    else
      flash[:error] = 'Must enter a Name'
      redirect_to new_national_park_path
    end

  end

  def index
    @national_parks = NationalPark.all
  end
end
