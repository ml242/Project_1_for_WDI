# This will guess the User class
FactoryGirl.define do
  factory :user do
    name "John"
    email "287502837523057@matt7.com"
    climber_name "tradman5000"
    password              "Foobar9999"
    password_confirmation "Foobar9999"
  end
end