
FactoryGirl.define do
  factory :employee do
  
     name     { Faker::Name.name }
     email    { Faker::Internet.email } 
     password { 'password' }
     password_confirmation { 'password' }
     address  { Faker::Address.secondary_address}
     city     { Faker::Address.city }
     state    { Faker::Address.state }
     dob      { '06-02-2000' }
     pin_code { '621117' }
     mobile_no{ '9999999999' }
     role_id  { Faker::Number.digit }
     manager_id { Faker::Number.digit } 
     gender   { ['male','female'] }
        
  end
end

