class Contact < ActiveRecord::Base
	before_save :generate_timestamp

	def generate_timestamp
		self.date = DateTime.now.strftime("%m/%d/%Y")
	end
end
