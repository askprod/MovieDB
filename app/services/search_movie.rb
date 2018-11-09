class SearchMovie
  
  def perform(title)
    @search = Tmdb::Search.new
    @search.resource('movie')
    @search.query(title)
    @search.fetch 
  end
  
end