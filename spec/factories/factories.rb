FactoryGirl.define do
  factory :place do
      name "MyString"
      latitude nil
      longitude nil
      address "Portland, OR"
    end
  factory :user do
    email 'sam@email.com'
    password 'password'
  end
end
