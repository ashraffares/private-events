class InvitationsController < ApplicationController
  before_action :set_invitation, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]
  # GET /invitations/1 or /invitations/1.json
  def show; end

  # GET /invitations/new
  def new
    @invitation = Invitation.new
  end

  # POST /invitations or /invitations.json
  def create
    @invitation = Invitation.new(invitation_params)
    isthere = Invitation.where('user_id= ? AND event_id= ?', @invitation.user_id, @invitation.event_id)
    if !isthere.ids[0].nil?
      redirect_to events_path, notice: 'You Already in the list.'
    else
      @invitation.save
      redirect_to events_path, notice: 'Invitation was successfully created.'
    end
  end

  # DELETE /invitations/1 or /invitations/1.json
  def destroy
    @invitation.destroy
    redirect_to invitations_url, notice: 'Invitation was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_invitation
    @invitation = Invitation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def invitation_params
    params.require(:invitation).permit(:user_id, :event_id)
  end
end
