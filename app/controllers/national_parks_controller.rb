class NationalParksController < ApplicationController
  def new
    @national_park = NationalPark.new
  end
end
