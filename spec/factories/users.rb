FactoryGirl.define do
  factory :user do
    id {rand(1..10)}
    name "rowshan"
    user_email "Rowshan_S"
    team_id {rand(1..10)}

    #manager
  end
end
