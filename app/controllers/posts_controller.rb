class PostsController < ApplicationController


  def index
    @Posts = Post.all.order(:topic, :body)
    render status: 200, json: @Posts.to_json
  end

  def show
    @Post = Post.find(params[:id])
    render status: 200, json: @Post.to_json
  end

  def create
    @Post = Post.new(post_params)
    if @Post.save
      render json: @Post.to_json, status: 200
    else
      render status: 400
    end
  end

  def update
    @Post = Post.find(params[:id])
    if @Post.update(post_params)
      render json: @Post.to_json, status: 200
    else
      render status: 400
    end

  end

  def destroy
    @Post = Post.find(params[:id])
    if @Post.destroy
      render json: @Post.to_json, status: 200
    else
      render status: 400
    end
  end

  private
  def post_params
    params.require(:post).permit(:location, :body, :topic)
  end
end
