FactoryGirl.define do
  factory :question do
    sequence(:text) { |n| "問題#{n}" }
    answer 1
  end
end
