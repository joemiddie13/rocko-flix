module MoviesHelper
  def year_of(movie)
    movie.released_on.year
  end

  def total_gross(movie)
    number_to_currency(movie.total_gross, percision: 0)
  end

  def average_stars(movie)
    if movie.average_stars.zero?
      content_tag(:strong, "No reviews")
    else
      pluralize(movie.average_stars, "star")
    end
  end
end