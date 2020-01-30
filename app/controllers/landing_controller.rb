class LandingController < ApplicationController
  def home
    @current_affairs = CurrentAffair.all
  end
end
