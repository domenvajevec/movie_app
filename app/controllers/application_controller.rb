class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  def set_initial_id
    @id = rand(5)
    @rotten = "<span class='glyphicon glyphicon-thumbs-down'></span>"
    @fresh =  "<span class='glyphicon glyphicon-thumbs-up'></span>"
  end

  helper_method :set_initial_id
end
