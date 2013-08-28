class ChangeColumnToTimesheets < ActiveRecord::Migration
    def change
        change_column :timesheets, :status, :string, :default=>"0"
    end
end
