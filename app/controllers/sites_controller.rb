class SitesController < ApplicationController
  before_action :authenticate_user, except: [:show]

  def index
    sites = current_user.sites
    render json: sites.as_json
  end

  def show
    site = Site.find_by(id: params[:id])
    render json: site.as_json
  end

  def create
    site = Site.new(
      user_id: current_user.id,
      name: params[:name],
    )
    if site.save
      render json: site.as_json
    else
      render json: { errors: site.errors.full_messages }, status: 422
    end
  end

  def update
    site = Site.find_by(id: params[:id])
    site.name = params[:name]

    if site.save
      render json: site.as_json
    else
      render json: { errors: site.errors.full_messages }, status: 422
    end
  end

  def destroy
    site = Site.find_by(id: params[:id])
    site.destroy
    render json: { message: "Site successfully deleted!" }
  end
end
