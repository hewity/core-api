class LinksController < ApplicationController
  def index
    @Links = Link.all
    render status: 200, json: @Links.to_json
  end

  def show
    @Link = Link.find(params[:id])
    render status: 200, json: @Link.to_json
  end

  def create
    @Link = Link.new(link_params)
    if @Link.save
      render json: @Link.to_json, status: 200
    end
  end

  def update
    @Link = Link.find(params[:id])
    if @Link.update(link_params)
      render json: @Link.to_json, status: 200
    end
  end

  def destroy
    @Link = Link.find(params[:id])
    if @Link.destroy
      render json: @Link.to_json, status: 200
    end
  end

  private
  def link_params
    params.require(:link).permit(:about, :url)
  end
end
