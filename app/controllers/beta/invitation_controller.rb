class Beta::InvitationController < ApplicationController
  
  def receive
    @invitation = Invitation.find_by_token(params[:token])
    if @invitation
      render :template => 'users/new'
    else
      
    end
  end
  
end