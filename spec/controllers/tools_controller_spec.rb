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

  describe '#new' do
    it 'works if you are a user' do
      user = create(:user, :confirmed)

      sign_in user

      get new_tool_path

      expect(response).to be_successful
    end

    it 'redirects if you are not logged in' do
      get new_tool_path

      expect(response).to be_redirect
    end
  end

  describe '#create' do
    subject { post tools_path, params: params }
    let(:params) do
      {
        tool: {
          name: 'Screwdrive',
          brand_name: 'Makita'
        }
      }
    end

    it 'creates a new tool if you are logged in' do
      sign_in(create(:user, :confirmed))

      expect { subject }.to change { Tool.count }.by 1
      expect(response).to be_redirect
    end
  end
end
