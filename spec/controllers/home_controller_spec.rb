# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe '#show' do
    it 'works' do
      get :show

      expect(response).to be_successful
    end
  end
end
