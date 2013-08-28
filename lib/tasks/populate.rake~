namespace :db do
    desc "Erase and fill database"
     task 'pupolate' => :environment do
     require 'populator'
     require 'faker'
      Employee.populate 5 do |emp|
        emp.name = "sathiya"
        emp.email = "sathiya@gmail.com"
      end
   end
end
