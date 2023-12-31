class UsersController < ApplicationController
  before_action :set_user, only: [:show]

	def index
    @user = User.all
  end
  
  def show
    @user_posts = @user.posts
  end

	private

	def set_user
    @user = User.find(params[:id])
	end
end