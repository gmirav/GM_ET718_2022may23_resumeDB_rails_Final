class WorkExperiencesController < ApplicationController
  def create
    @resume = Resume.find(params[:resume_id])
    @work_experience = @resume.work_experiences.create(work_experience_params)
    redirect_to resume_path(@resume)
  end
 
  private
    def work_experience_params
      params.require(:work_experience).permit(:role_and_website, :start_to_finish, :description)
    end
end