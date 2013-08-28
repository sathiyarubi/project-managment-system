class Timesheet < ActiveRecord::Base
  attr_accessible :employee_id, :friday, :monday, :saturday, :status, :sunday, :thursday, :total_hours,
                  :tuesday, :wednesday, :week_start_date, :timesheet_details_attributes
belongs_to :employee
has_many :timesheet_details, dependent: :destroy
accepts_nested_attributes_for :timesheet_details,:allow_destroy => true
end
