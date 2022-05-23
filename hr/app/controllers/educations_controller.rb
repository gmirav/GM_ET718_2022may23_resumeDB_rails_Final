class EducationsController < ApplicationController
  def create
    @resume = Resume.find(params[:resume_id])
    @education = @resume.educations.create(education_params)
    redirect_to resume_path(@resume)
  end
 
  private
    def education_params
      params.require(:education).permit(:institution, :start_to_finish, :achievement)
    end
end