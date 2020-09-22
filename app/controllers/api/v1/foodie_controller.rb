class Api::V1::FoodieController < ApplicationController
  def index
    start = params[:start]
    end_city = params[:end_city]
    render json: FoodieSerializer.new(FoodieFacade.new(start, end_city))
  end
end
