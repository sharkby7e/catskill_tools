# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ToolsController, type: :request do
  describe '#index' do
    let!(:tool) { create(:tool) }

    it 'works' do
      get tools_path

      expect(response).to be_successful
    end

    it 'includes info about the tool' do
      get tools_path

      expect(response).to be_successful
      expect(response.body).to have_content(tool.name)
      expect(response.body).to have_content tool.user.email
    end
  end
end
