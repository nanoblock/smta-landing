class ContactController < ApplicationController

	def send(arg)
		self.contact
		# SendMailer.contact(params[:email]).deliver_now
		redirect_to(:back)
	end

	def contact
		if find_email(params[:email])
			@contact = Contact.new(:email => params[:email])
			@contact.save
		end
	end

	private
	def find_email(email)
		if Contact.find_by_email(email).nil?
			return true
		else
			return false
		end
	end

end