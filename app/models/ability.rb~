class Ability

  include CanCan::Ability

  def initialize(current_user)
#    user ||= Employee.new # guest user (not logged in) 
   if current_user.present? && current_user.role.name == "Admin"
      can :manage, :all
    else
can :manage, :all
      #can :read, :all
      #can [:update,:profile], Employee
    end
  end
end

