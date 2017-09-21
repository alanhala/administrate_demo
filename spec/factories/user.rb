FactoryGirl.define do
  factory :user do
    name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    address { Faker::Address.street_address }
    birthdate { Faker::Time.between(2.days.ago, Date.today, :all) }
  end
end
