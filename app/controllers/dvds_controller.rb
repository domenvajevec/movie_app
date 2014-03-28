class DvdsController < ApplicationController
  before_action :set_initial_id

  def index
    dvd_list = JSON.parse(Dvd.party)
    @dvds = dvd_list["movies"].sort_by {|movie| movie["ratings"]["critics_score"]}.reverse
  end

end
