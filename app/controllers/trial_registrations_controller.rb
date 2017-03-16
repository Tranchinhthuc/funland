class TrialRegistrationsController < ApplicationController
  def create
    @trial_registration = TrialRegistration.new(trial_registration_params)
    @trial_registration.save
    redirect_to root_path
  end

  private
  def trial_registration_params
    params.require(:trial_registration).permit(:kid_name, :email,
      :phone, :message, :course_id, :branch_id)
  end
end
