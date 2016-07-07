require 'csv'

class Contact < ActiveRecord::Base
	def self.to_csv(options = {})
		csv_data = CSV.generate do |csv|
			csv << csv_column_names
			all.each do |contact|
				csv << model.attributes.values_at(*column_names)
			end
		end
		csv_data.encode(Encoding::SJIS)
	end
end
