class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :merchantID
      t.string :companyName
      t.string :phone

      t.timestamps null: false
    end
  end
end
