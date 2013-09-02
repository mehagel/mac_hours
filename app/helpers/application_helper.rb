module ApplicationHelper
	def convert_date(date)
		months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "July", "Aug", "Sept", "Oct", "Nov", "Dec"]
		"#{months[date.month - 1]} #{date.day} --"
	end
end
