class CinemaPagesController < ApplicationController
  def home
    @cinemas = Cinema.all
  end

  def show
  end

  def create
  end

  def new
  end
end
