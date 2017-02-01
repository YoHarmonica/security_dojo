FactoryGirl.define do
  factory :examination do
    sequence(:description) { |n| "#{n}月のテスト" }
  end
end
