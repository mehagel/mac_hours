class DailyHour < ActiveRecord::Base
	attr_accessible :hours, :date


	def self.total_hours
		DailyHour.all.inject(0){|sum, n| sum + n.hours }
	end

	def self.total_days_in_month
		Time.days_in_month((Date.today.month), (Date.today.year))
	end

	def self.days_left_in_month
		total_days_in_month - Date.today.day
	end

	def self.hours_left_to_work
		100-total_hours
	end

	def self.avg_hours
		hours_left_to_work / (days_left_in_month).to_f
	end

	def self.money_made
		"$#{DailyHour.total_hours * 30}.00"
	end

end