class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @contributions = (@user.posts + @user.comments).sort { |a, b| b.created_at <=> a.created_at }
  end
end
