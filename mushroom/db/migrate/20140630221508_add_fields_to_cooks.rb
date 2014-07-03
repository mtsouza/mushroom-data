class AddFieldsToCooks < ActiveRecord::Migration
  def change
  	add_column :cooks, :soaktime, :integer
	add_column :cooks, :cooktime, :integer
	add_column :cooks, :substrate, :integer
	add_column :cooks, :spawn, :integer
	add_column :cooks, :notes, :integer
  end
end
