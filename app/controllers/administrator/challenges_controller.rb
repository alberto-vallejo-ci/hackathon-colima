module Administrator
  class ChallengesController < Administrator::ApplicationController
    expose :challenges, -> { Challenge.all }
    expose :challenge

    def create
      binding.pry
      if challenge.save
        redirect_to [:admin, challenge], notice: 'Challenge was successfully created.'
      else
        render :new
      end
    end

    def update
      if challenge.update(challenge_params)
        redirect_to [:admin, challenge], notice: 'Challenge was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      challenge.destroy
      redirect_to admin_challenges_url, notice: 'Challenge was successfully destroyed.'
    end

    private

    def challenge_params
      params.require(:challenge).permit(
        :title,
        :description,
        :category_id,
        :owner_name,
        :owner_email,
        :owner_phone,
        :description_how,
        :profile_requirement,
        :is_looking_for_team,
        :location,
        :assets
      )
    end
  end
end
