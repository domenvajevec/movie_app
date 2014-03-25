class DvdsController < ApplicationController

  def index
    dvd_list = JSON.parse(Dvd.party)
    @movies = dvd_list["movies"].sort_by {|movie| movie["ratings"]["critics_score"]}.reverse
  end

end
