# frozen_string_literal: true

class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end
end
