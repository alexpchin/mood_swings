FactoryGirl.define do
  factory :answer_set do
    association :cohort, factory: :cohort
    association :user, factory: :user

    factory :answer_set_with_answers do
      after(:create) do |answer_set, evaluator|
        create(:answer, answer_set: answer_set)
      end
    end
  end
end