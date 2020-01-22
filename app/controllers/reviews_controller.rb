class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @game_rental = GameRental.find(params[:game_rental_id])
    @review = Review.new
  end

  def create
    @game_rental = GameRental.find(params[:game_rental_id])
    @review = Review.new(review_params)
    @review.game_rental_id = @game_rental.id
    
    if @review.valid?
      @review.save
      @game_rental.review_id = @review.id
      @game_rental.save
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
