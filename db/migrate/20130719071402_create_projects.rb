class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :start_date
      t.string :end_date
      t.string :client_id

      t.timestamps
    end
  end
end
