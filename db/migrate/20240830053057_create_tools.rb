# frozen_string_literal: true

class CreateTools < ActiveRecord::Migration[7.1]
  def change
    create_table :tools do |t|
      t.string :name
      t.string :brand_name
      t.text :description

      t.timestamps
    end
  end
end
