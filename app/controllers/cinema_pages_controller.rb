class CinemaPagesController < ApplicationController
  def home
    @cinemas = Cinema.all
  end
end
