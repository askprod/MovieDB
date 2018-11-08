class SearchMovie
    Tmdb::Api.key(Rails.application.credentials[:moviedb])

    def initialize(movie)
      @user_movie = movie
      @movies = []
    end
  
    def perform
      @film = Tmdb::Movie.find(@user_movie)
        @film.each do |film|
          temp_hash = {}
            temp_hash[:name] = film.title
            temp_hash[:overview] = film.overview
            temp_hash[:date] = film.release_date
            temp_hash[:img] = film.poster_path
          @movies << temp_hash
        end
        return @movies
    end
  end