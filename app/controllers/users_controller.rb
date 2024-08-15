class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @vehicules = @user.vehicules
  end
end
