class RatingsController < ApplicationController

  # Shows a given rating
  def show
    @rating = Rating.find(params[:id])
  end

  # Create new rating with instance variable @rating
  def new
    @rating = Rating.new
  end

  # Attempts to create and save a rating to the db based on input
  def create
    @rating = Rating.new(rating_params)
    if @rating.save
      flash.now[:success] = 'Submitted'
    else
      flash.now[:failure] = 'Error'

    end
  end

  # Private rating parameters
  private
  def rating_params
    params.permit(:score, :group_no, :rater_ID, :ratee_ID, :rater_comments, :project_no)
  end

end
