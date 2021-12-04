class RatingsController < ApplicationController

  def show
    @rating = Rating.find(params[:id])
  end

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    if @rating.save
      flash.now[:success] = 'Submitted'
    else
      flash.now[:failure] = 'Error'

    end
  end

  private

  def rating_params
    params.permit(:score)
  end

end
