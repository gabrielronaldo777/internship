class V1::MenusController < ApplicationController
    before_action :set_menu, only:[ :update, :delete, :show ]

    def index
        menus = Menu.all
        render json: { result: true, menu: menus }, status: :ok
    end

    def show
        render json: { result: true, menu: @menu }
    end

    def create
        menu = Menu.create(menu_params)
        if menu.save
            render json: { result: true, menu: menu }, status: :created
        else
            render json: { result: false, menu: menu.errors, msg: "Failed to create account" }, status: :unprocessable_entity
        end
    end

    def update
        if @menu.update(menu_params)
            render json: { result: true, msg: "Updated successfully" }
        else
            render json: { result: false, msg: "Failed to update" }
        end
    end
    def delete
        if @menu.destroy
            render json: { result: true, msg: "Delete Success" }
        else
            render json: { result: false, msg: "Delete Failed" }
        end
    end

    

    private

    def menu_params
        params.permit(:name, :price )
    end

    def set_menu
        @menu = Menu.find(params[:id])
    end


end
