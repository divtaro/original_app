class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @posts = @user.posts
    @posts = Post.order('id DESC')  
  end
end