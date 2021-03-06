class HomeController < ApplicationController

  def search
    @movies = SearchMovies.new.perform(params[:movie])
    @titles = []
    @releases = []
    @images = []

    @movies.each do |movie|
    @titles << movie['title']
    @releases << movie['release_date']
    @images << "http://image.tmdb.org/t/p/w185#{movie['poster_path']}"
    end
  end
  
end



