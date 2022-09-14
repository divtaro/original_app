class PostsController < ApplicationController
  def index
    @posts = Post.order('id DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:title, :shooting_month_id, :shooting_week_id, :impression_point, :parking_presence_id, :parking_fee_id, 
                                 :nearest_station, :walking_time_id, :shooting_location, :other_information, :image).merge(user_id: current_user.id)
  end
end