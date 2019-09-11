# frozen_string_literal: true

class CinemaPagesController < ApplicationController
  def home
    @cinemas = Cinema.all
  end
end
