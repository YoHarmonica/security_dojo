FactoryGirl.define do
  factory :result do
    trial nil
    question nil
    answer { rand(2) + 1}
  end
end
