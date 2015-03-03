class CreateVendingMachineStatuses < ActiveRecord::Migration
  def change
    create_table :vending_machine_statuses do |t|
      t.string :serialNumber
      t.string :type
      t.integer :row
      t.integer :total

      t.timestamps null: false
    end
  end
end
