module EmployeesHelper

 def manager_list
      Employee.where("role_id=?",'3').all.collect {|p| [ p.name, p.id ] }
  end

end
