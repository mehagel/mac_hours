class CreateDailyHoursTable < ActiveRecord::Migration
  def change
  	create_table :daily_hours do |t|
  		t.integer :hours

  		t.timestamps
  	end
  end

end
