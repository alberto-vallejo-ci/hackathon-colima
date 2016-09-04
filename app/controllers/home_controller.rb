class HomeController < ApplicationController
  def show
    @home = ::Home.new
  end
end
