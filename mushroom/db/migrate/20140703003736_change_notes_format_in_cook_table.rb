class ChangeNotesFormatInCookTable < ActiveRecord::Migration
 def change
   change_column :cooks, :notes, :string
  end
end

