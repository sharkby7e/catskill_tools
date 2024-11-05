# frozen_string_literal: true

class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end

  def new
    return redirect_to root_path unless current_user.present?

    @tool = Tool.new
  end
end
