class OrdersController < ApplicationController
  # before_action :authenticate_user

  def index
    site = Site.find_by(id: params[:site_id])
    orders = site.orders
    render json: orders.as_json
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: order.as_json
  end

  def create
    carted_services = current_user.carted_services.where(status: "carted")
    calculated_subtotal = 0

    carted_services.each do |carted_service|
      service = carted_service.service
      calculated_subtotal += service.price
    end

    order = Order.new(
      site_id: params[:site_id],
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      total: calculated_subtotal,
    )

    if order.save
      carted_services.update_all(status: "purchased", order_id: order.id)
      render json: order.as_json
    else
      render json: { errors: order.errors.full_messages }, status: 422
    end
  end
end
