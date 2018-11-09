class MovieController < ApplicationController
    
Tmdb::Api.key(Rails.application.credentials[:moviedb])
      
  def search
    @movies = SearchMovie.new.perform(params[:movie])
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





