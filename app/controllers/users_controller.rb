class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    
  end

  def upload
    st = Status.new(value: "negative", user_id: current_user.id, created_at: "2018-11-01")
    st.save
  end

  def showStatus
    @st = Status.order("created_at desc").find_by(:user_id => current_user.id)
  end
end
