class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
end

def rooms
    Housing.rodinites
end
