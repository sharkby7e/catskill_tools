# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ToolsController, type: :request do
  describe '#index' do
    it 'works' do
      get tools_path

      expect(response).to be_successful
    end

    it 'includes info about the tool' do
      get tools_path

      expect(response).to be_successful
    end
  end
end
