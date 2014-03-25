class MoviesController < ApplicationController
  
  def index
    movie_list = JSON.parse(Movie.party)
    @movies = movie_list["movies"].sort_by {|movie| movie["ratings"]["critics_score"]}.reverse

     #thumbs up and down variables
    @rotten = "<span class='glyphicon glyphicon-thumbs-down'></span>"
    @fresh =  "<span class='glyphicon glyphicon-thumbs-up'></span>"
  end
  

end
