class WorkExperiencesController < ApplicationController
  def create
    @resume = Resume.find(params[:resume_id])
    @workexperience = @resume.workexperiences.create(workexperience_params)
    redirect_to resume_path(@resume)
  end
 
  private
    def workexperience_params
      params.require(:workexperience).permit(:role_and_website, :start_to_finish, :description)
    end
end