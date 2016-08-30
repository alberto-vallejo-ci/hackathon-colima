class HomeController < ApplicationController
  def show
    @challenges = Challenge.all
  end
end
