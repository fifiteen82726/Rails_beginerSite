class WebsitesController < ApplicationController
  before_action :set_website, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @websites = Website.all
    respond_with(@websites)
  end

  def show
    respond_with(@website)
  end

  def new
    @website = Website.new
    respond_with(@website)
  end

  def edit
  end

  def create
    @website = Website.new(website_params)
    @website.save
    respond_with(@website)
  end

  def update
    @website.update(website_params)
    respond_with(@website)
  end

  def destroy
    @website.destroy
    respond_with(@website)
  end

  private
    def set_website
      @website = Website.find(params[:id])
    end

    def website_params
      params.require(:website).permit(:name, :url)
    end
end
