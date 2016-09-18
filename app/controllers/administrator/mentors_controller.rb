module Administrator
  class MentorsController < Administrator::ApplicationController
    before_action :set_mentor, only: [:show, :edit, :update, :destroy]

    # GET /admin/mentors
    def index
      @mentors = Mentor.all
    end

    # GET /admin/mentors/1
    def show
    end

    # GET /admin/mentors/new
    def new
      @mentor = Mentor.new
    end

    # GET /admin/mentors/1/edit
    def edit
    end

    # POST /admin/mentors
    def create
      @mentor = Mentor.new(mentor_params)

      if @mentor.save
        redirect_to [:admin, @mentor], notice: 'Mentor was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /admin/mentors/1
    def update
      if @mentor.update(mentor_params)
        redirect_to [:admin, @mentor], notice: 'Mentor was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /admin/mentors/1
    def destroy
      @mentor.destroy
      redirect_to admin_mentors_url, notice: 'Mentor was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_mentor
        @mentor = Mentor.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def mentor_params
        params.require(:mentor).permit(:first_name, :last_name, :email, :title, :experience, :category_id)
      end
  end
end
