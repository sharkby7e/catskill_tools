# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Tool, type: :model do
  it 'has a valid factory' do
    expect(build(:tool)).to be_valid
  end
end
