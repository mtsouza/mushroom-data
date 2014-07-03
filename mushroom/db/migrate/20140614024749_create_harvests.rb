class CreateHarvests < ActiveRecord::Migration
  def change
    create_table :harvests do |t|
    	t.date :harvest
    	t.date :date
    	t.integer :bagid
    	t.float :weight
    	t.integer :temp 
    	t.float :humidity
    	t.string :comment

      t.timestamps
    end
  end
end
