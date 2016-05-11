class TagsController < ApplicationController
  def index
    @tags = Tag.all
    render json: @tags.to_json(include: [:links, :posts])
  end

  def show
    @tag = Tag.find(params[:id])
    render status: 200, json: @tag.to_json(include: [:links, :posts])
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      render status: 200, json: @tag.to_json(include: [:links, :posts])
    end
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      render status: 200, json: @tag.to_json(include: [:links, :posts])
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    if @tag.destroy
      render status: 200, json: @tag.to_json(include: [:links, :posts])
    end
  end

    private
    def tag_params
      params.require(:tag).permit(:name, :post_id, :link_id)
    end
  end
