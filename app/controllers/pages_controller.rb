class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user = current_user
  end


  private

  def user_params
    params.require(:user).permit(:name, :surname, :email)
  end
end
