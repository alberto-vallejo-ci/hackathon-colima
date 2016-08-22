class ChallengesController < ApplicationController
  def create
    value = ChallengeForm.new(params: challenges_params).save! ? :ok : :bad_request
    head value
  end

  private

  def challenges_params
    params.require(:challenge).permit(:name, :description)
  end
end
