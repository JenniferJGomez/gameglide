class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    if @review.valid?
      redirect_to games_path
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
