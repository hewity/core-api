class CommentsController < ApplicationController
  def index
    @Comments = Comment.all
    render status: 200, json: @Links.to_json
  end
  def create
    @Comment = Comment.new(comment_params)
    if @Comment.save
      render json: @Comment.to_json, status: 200
    end
  end

  def update
    @Comment = Comment.find(params[:id])
    if @Comment.update(comment_params)
      render json: @Comment.to_json, status: 200
    end
  end

  def destroy
    @Comment = Comment.find(params[:id])
    if @Comment.destroy
      render json: @Comment.to_json, status: 200
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :author)
  end
end
