class MailController < ApplicationController
	
	def send(arg)
		# SendMailer.contact(params[:email]).deliver_now
		
		@contact = Contact.new
		@contact.email = params[:email]
		# @contact.save
		puts "======================="
		test(@contact.email)
		puts "#{@contact.id}"
		puts "#{@contact.email}"
		puts "======================="
		

		redirect_to(:back)
	end

end