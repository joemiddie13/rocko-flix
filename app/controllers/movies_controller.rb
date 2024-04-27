class MoviesController < ApplicationController
  def index
    @movies = ["OPPENHEIMER", "her", "THE IRON CLAW"]
  end
end
