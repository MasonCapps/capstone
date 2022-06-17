class ServicesController < ApplicationController
  # before_action :authenticate_user

  def create
    service = Service.new(
      site_id: params[:site_id],
      name: params[:name],
      price: params[:price],
      frequency: params[:frequency],
    )
    if service.save
      render json: service.as_json
    else
      render json: { errors: service.errors.full_messages }, status: 422
    end
  end

  def update
    service = Service.find_by(id: params[:id])
    service.name = params[:name] || service.name
    service.price = params[:price] || service.price
    service.frequency = params[:frequency] || service.frequency
    if service.save
      render json: service.as_json
    else
      render json: { errors: service.errors.full_messages }, status: 422
    end
  end

  def destroy
    service = Service.find_by(id: params[:id])
    service.destroy
    render json: { message: "Service successfully deleted!" }
  end
end
