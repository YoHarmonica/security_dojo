FactoryGirl.define do
  factory :question do
    sequence(:text) { |n| "問題#{n}" }
    answer { rand(2) + 1}
  end
end
