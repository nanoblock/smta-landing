class MailController < ApplicationController
	
	def send(arg)
		SendMailer.contact(params[:email]).deliver_now
		redirect_to(:back)
	end

end