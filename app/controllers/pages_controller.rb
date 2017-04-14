require 'twilio-ruby'
    
class PagesController < ApplicationController
  
  skip_before_action :verify_authenticity_token
  
  def home
  end

  def sms
    @number = params[:number]
    @message = params[:message]
    
   account_sid = ENV["account_sid_s"]
   auth_token = ENV["auth_token_s"]

	@client = Twilio::REST::Client.new account_sid, auth_token
	message = @client.account.messages.create(:body => @message,
	    :to => @number,    # Replace with your phone number
	    :from => "+13472897823")  # Replace with your Twilio number

	  puts message.sid
	  
    # byebug
    # raise "Action sms in the UsersController is not implemented! received params #{params.to_json}"
  end
  
end
