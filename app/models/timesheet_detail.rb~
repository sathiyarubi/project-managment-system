class TimesheetDetail < ActiveRecord::Base
  attr_accessible :activity, :activity_id, :description, :employee_id, :friday, :monday, :project,
                  :project_id, :saturday, :sunday, :thursday,:timesheet_id, :total_hours, :tuesday, :wednesday
   belongs_to :activity
   belongs_to :timesheet
   belongs_to :project
end
