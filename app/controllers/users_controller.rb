class UsersController < ApplicationController
  def show

  end

  def showStatus
    @st = Status.order("created_at desc").find_by(:user_id => current_user.id)
  end
end
