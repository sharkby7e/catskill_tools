# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ToolsController, type: :controller do
  describe 'GET /index' do
    it 'works' do
      get :index

      expect(response).to be_successful
    end
  end
end
