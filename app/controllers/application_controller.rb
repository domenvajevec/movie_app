class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #bootstrap glyphicon variables - thumbs up and down
  @rotten = "<span class='glyphicon glyphicon-thumbs-down'></span>"
  @fresh =  "<span class='glyphicon glyphicon-thumbs-up'></span>"
end
