FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end
  
  factory :user do
    first_name 'John'
    last_name 'Snow'
    email { generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
  end
  
  factory :second_user, class: 'User' do
    first_name 'Jane'
    last_name 'Smith'
    email  email { generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
  end
  
  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email  email { generate :email }
    password 'asdfasdf'
    password_confirmation 'asdfasdf'
  end
end