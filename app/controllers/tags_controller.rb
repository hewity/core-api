class TagsController < ApplicationController
  def index
    @tags = Tag.all
    render json: @tags
  end

  def show
    @tag = Tag.find(params[:id])
    render status: 200, json: @tag.to_json
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      render status: 200, json: @tag.to_json
    end
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      render status: 200, json: @tag.to_json
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    if @tag.destroy
      render status: 200, json: @tag.to_json
    end

    private
    def tag_params
      params.require(:tag).permit(:name)
    end
  end
