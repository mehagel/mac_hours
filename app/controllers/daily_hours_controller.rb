class DailyHoursController < ApplicationController

	before_filter :authenticate_user!

	def index
		@all_hours=DailyHour.all
		@total_hours = DailyHour.total_hours
		@days = DailyHour.days_left_in_month
		@hours_left = DailyHour.hours_left_to_work
		@avg_hours = DailyHour.avg_hours
	end

	def new
		@daily_hour = DailyHour.new
	end

	def create
		DailyHour.create(params[:daily_hour])
		redirect_to daily_hours_path
	end
end