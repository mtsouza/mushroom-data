class CreateCooks < ActiveRecord::Migration
  def change
    create_table :cooks do |t|
      t.date :date
      t.integer :bagid
      t.string :method
      

      t.timestamps
    end
  end
end
