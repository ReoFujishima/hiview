class StatusesController < InheritedResources::Base
  # before_action :authenticate_hospital!, only: [:new, :create, :edit]
  before_action :authenticate_user!, only: [:show]

  # def create
  #   # @status = Status.new(hospital_id: current_hospital.id, value: params[:value], user_id: params[:user_id])
  #   # @status.hospital_id = current_hospital.id
  #   # @status = Status.find(params[:id])
  #   # @status.hospital_id = current_hospital.id
  #   # @status = params[:status]
  #   # @status = Status.new(params[:status])
  #   # create!(:notice => "New Status was created") { root_url }
  #   create!(:notice => "New Status was created")
  # end
  def show
    @status = Status.find(params[:id])
    if @status.user_id == current_user.uuid
      redirect_to status
    else
      redirect_to "/"
    end
  end

  private

  def status_params
    params.require(:status).permit(:value, :hospital_id, :user_id)
  end

end
