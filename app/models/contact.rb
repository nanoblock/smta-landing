class Contact < ActiveRecord::Base
	before_save :generate_timestamp

	def generate_timestamp
		self.date = DateTime.now
	end
end
