class LandingController < ApplicationController
  def home
    @current_affairs = CurrentAffair.all
    @quiz = Quiz.first
  end
end
