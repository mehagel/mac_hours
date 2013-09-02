class AddDateToDailyHours < ActiveRecord::Migration
  def change
  	add_column :daily_hours, :date, :date
  end
end
