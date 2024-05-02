class ReviewsController < ApplicationController
  before_action :set_movie

  def index
    @reviews = @movie.reviews
    respond_to do |format|
      format.html
      format.json { render json: @reviews }
    end
  end

  def new
    @review = @movie.reviews.new
  end

  def create
    @review = @movie.reviews.new(review_params)
    if @review.save
      respond_to do |format|
        format.html { redirect_to movie_reviews_path(@movie), notice: "Thanks for your review!" }
        format.json { render json: @review, status: :created, location: @review }
      end
    else
      respond_to do |format|
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:name, :comment, :stars)
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end