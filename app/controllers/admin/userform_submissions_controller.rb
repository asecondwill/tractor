class Admin::UserformSubmissionsController < AdminController
  def index
    @userform= Userform.find(params[:userform_id])
  end
end
