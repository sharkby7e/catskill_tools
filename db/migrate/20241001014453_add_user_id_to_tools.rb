# frozen_string_literal: true

class AddUserIdToTools < ActiveRecord::Migration[7.1]
  def change
    add_column :tools, :user_id, :integer, null: false
  end
end
