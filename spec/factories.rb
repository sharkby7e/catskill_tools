# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'finch@keating.com' }
    password { 'catnip' }
  end

  factory(:tool) do
    association :user
    name { 'Hammer' }
    brand_name { 'Makita' }
  end
end
