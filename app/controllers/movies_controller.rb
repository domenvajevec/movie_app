class MoviesController < ApplicationController
  before_action :set_initial_id

  def index
    movie_list = JSON.parse(Movie.party)
    @movies = movie_list["movies"].sort_by {|movie| movie["ratings"]["critics_score"]}.reverse
  end
 
  def show
    movie_number = params[:id]
  end
end
