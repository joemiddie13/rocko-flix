class MoviesController < ApplicationController
  def index
    @movies = Movie.released
    respond_to do |format|
      format.html
      format.json { render json: @movies }
    end
  end

  def show
    @movie = Movie.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @movie }
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      respond_to do |format|
        format.html { redirect_to @movie, notice: "Movie successfully updated!" }
        format.json { render json: @movie }
      end
    else
      respond_to do |format|
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      respond_to do |format|
        format.html { redirect_to @movie, notice: "Movie successfully created!" }
        format.json { render json: @movie, status: :created, location: @movie }
      end
    else
      respond_to do |format|
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, status: :see_other, alert: "Movie successfully deleted!" }
      format.json { head :no_content }
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :description, :rating, :released_on, :total_gross, :director, :duration, :image_file_name)
  end
end