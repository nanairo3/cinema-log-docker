# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CinemaPagesController, type: :controller do
  describe '#home' do
    it '200レスポンスを返す' do
      get :home
      expect(response).to have_http_status '200'
    end
  end
end
