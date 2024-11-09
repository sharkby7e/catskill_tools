# frozen_string_literal: true

class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end

  def new
    unless current_user.present?
      flash[:error] = 'Log in or Sign up to add a tool!'
      redirect_to new_user_session_path status: :see_other
    end

    @tool = Tool.new
  end

  def create
    return redirect_to tools_path unless current_user.present?

    @tool = Tool.new(tool_params)
    @tool.user = current_user

    if @tool.save
      redirect_to tools_path, notice: 'Tool added successfully!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :brand_name)
  end
end
