class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :company
      t.string :city
      t.string :state
      t.string :phone
      t.string :zip

      t.timestamps
    end
  end
end
