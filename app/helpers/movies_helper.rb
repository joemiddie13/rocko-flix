module MoviesHelper
  def year_of(movie)
    movie.released_on.year
  end

  def total_gross(movie)
    number_to_currency(movie.total_gross, percision: 0)
  end
end