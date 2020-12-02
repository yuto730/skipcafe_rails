FactoryBot.define do
  factory :user do
    nickname              {"skip"}
    email                 {"skip@gmail.com"}
    password              {"a0a0a0"}
    password_confirmation {password}
    first_name            {"六車"}
    last_name             {"勇斗"}
  end
end