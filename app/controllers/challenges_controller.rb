class ChallengesController < ApplicationController
  def create
    value = ChallengeForm.new(params: challenges_params).save! ? :ok : :bad_request
    head value
  end

  private

  def challenges_params
    params.require(:challenge).permit(:title, :owner_name, :owner_email, :owner_phone,
                                      :description, :description_how, :is_looking_for_team,
                                      :profile_requirements, :assets, :location, :category)
  end
end
