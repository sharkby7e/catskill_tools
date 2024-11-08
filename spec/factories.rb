# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'finch@keating.com' }
    password { 'catnip' }

    trait :confirmed do
      confirmed_at { 1.week.ago }
    end
  end

  factory(:tool) do
    association :user
    name { 'Hammer' }
    brand_name { 'Makita' }
  end
end
