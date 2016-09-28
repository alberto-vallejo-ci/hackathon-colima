class HomeController < ApplicationController
  def show
    @home = ::Home.new
  end

  def faq
  end
end
