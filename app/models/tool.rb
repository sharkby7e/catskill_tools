# frozen_string_literal: true

class Tool < ApplicationRecord
  belongs_to :user
end

# == Schema Information
#
# Table name: tools
#
#  id          :integer          not null, primary key
#  brand_name  :string
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
