FactoryGirl.define do

  factory :member_role, class: Role do
    name "Member"
  end

  factory :admin_role, class: Role do
    name "Admin"
  end

  factory :member, class: User do
    email "member@member.com"
    password "password"
    password_confirmation "password"
    association :role, factory: :member_role
  end

  factory :admin, class: User do
    email "regular@regular.com"
    password "password"
    password_confirmation "password"
    association :role, factory: :admin_role
  end

end