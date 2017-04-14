class PagesController < ApplicationController
  
  def home
  end

  def sms
    @number = params[:number]
    @message = params[:message]
    # byebug
    # raise "Action sms in the UsersController is not implemented! received params #{params.to_json}"
  end
  
end
