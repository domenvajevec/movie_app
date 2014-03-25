class DvdsController < ApplicationController


  def index
    dvd_list = JSON.parse(Dvd.party)
    @dvds = dvd_list["movies"].sort_by {|movie| movie["ratings"]["critics_score"]}.reverse
  
     #thumbs up and down variables
    @rotten = "<span class='glyphicon glyphicon-thumbs-down'></span>"
    @fresh =  "<span class='glyphicon glyphicon-thumbs-up'></span>"
  end

end
