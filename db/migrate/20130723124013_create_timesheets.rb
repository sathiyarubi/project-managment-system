class CreateTimesheets < ActiveRecord::Migration
  def change
    create_table :timesheets do |t|
      t.string :sunday
      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.string :total_hours
      t.string :week_start_date
      t.string :status, :default => "Not Yet Submitted"
      t.string :employee_id

      t.timestamps
    end
  end
end
