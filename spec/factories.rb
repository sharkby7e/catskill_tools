# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    
  end

  factory(:tool) do
    name { 'Hammer' }
    brand_name { 'Makita' }
  end
end
