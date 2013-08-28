class CreateTimesheetDetails < ActiveRecord::Migration
  def change
    create_table :timesheet_details do |t|
      t.string :project
      t.string :activity
      t.string :description
      t.string :sunday
      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.string :total_hours
      t.string :timesheet_id
      t.string :employee_id
      t.string :project_id
      t.string :activity_id

      t.timestamps
    end
  end
end
