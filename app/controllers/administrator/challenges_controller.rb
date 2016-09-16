module Administrator
  class ChallengesController < Administrator::ApplicationController
    expose :challenges, -> { Challenge.all }
    expose :challenge

    def edit
      
    end
  end
end
