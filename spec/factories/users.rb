
FactoryGirl.define do

  factory :user do
    id 6
    email "email@email.com"
    password "password"
    admin false
    subscription false
      factory :admin do
        admin true
      end
  end
end
