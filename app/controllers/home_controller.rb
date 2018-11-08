class HomeController < ApplicationController

    def index
    @movie = params['/home/index']['movie']
    redirect_to '/movie/search'
  end
end


# @final_result = SearchMovie.new(movie: @movie).perform
# puts @final_result