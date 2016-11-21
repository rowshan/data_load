FactoryGirl.define do
  factory :team do
    user_id {rand(1..10)}
    manager_id {rand(1..10)}
    user

  end
end
