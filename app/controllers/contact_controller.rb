class ContactController < ApplicationController

	def send(arg)
		contact
		# SendMailer.contact(params[:email]).deliver_now
			# puts "COMECOMECOME"
			# flash[:success] = "Thanks you!!!!!!!! I got your mail"
		begin
			return if request.referer.nil? 
			redirect_to(:back)
		rescue ActionController::RedirectBackError
			

			redirect_to root_path, notice: "SUCCESS!"
		end

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
