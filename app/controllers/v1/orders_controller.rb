class V1::OrdersController < ApplicationController
    before_action :set_order, only:[ :update, :delete, :index ]

    def index
        @order = Order.all
            render json: { result: true, order: @order }
    end

    def create
        order = current_user.orders.create(order_params)
        if order.save
            render json: { result: true, order: order }, status: :created
        else
            render json: { result: false, order: order.errors, msg: "Menu yang anda pilih tidak ada" }, status: :unprocessable_entity
        end
    end

    def update
        if @order.update(order_params)
            render json: { result: true, msg: "Updated successfully" }
        else
            render json: { result: false, msg: "Failed to update" }
        end
    end
    def delete
        if @order.destroy
            render json: { result: true, msg: "Deleted successfuly" }
        else
            render json: { result: false, msg: "Failed to delete your Order" }
        end
    end
    

    private

    def order_params
        params.permit(:address, :menu_id, :user_id )
    end
    def set_order
        @order = current_order
    end

end
