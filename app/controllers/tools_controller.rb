# frozen_string_literal: true

class ToolsController < ApplicationController
  def index
    @tools = Tool.all
  end

  def new
    return redirect_to new_user_session_path, status: :see_other unless current_user.present?

    @tool = Tool.new
  end

  def create
    return redirect_to tools_path unless current_user.present?

    @tool = Tool.new(tool_params)
    @tool.user = current_user

    if @tool.save
      redirect_to tools_index
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :brand_name)
  end
end
