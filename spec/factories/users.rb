
FactoryGirl.define do

  factory :user do
    email "email@email.com"
    password "password"
    admin false
    subscription false
      factory :admin do
        admin true
      end
  end
end
