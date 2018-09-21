class V1::UsersController < ApplicationController
    before_action :authenticate_user, only: [ :index, :update, :delete, :show ]
    before_action :set_user, only:[ :update, :delete, :index ]

    def index
        if current_user
            render json: { result: true, user: @user }
        else
            render json: { result: false, msg: "Failed to login" }
        end
    end

    def create
        user = User.create(user_params)
        if user.save
            render json: { result: true, user: user }, status: :created
        else
            render json: { result: false, user: user.errors, msg: "Failed to create account" }, status: :unprocessable_entity
        end
    end

    def update
        if @user.update(user_params)
            render json: { result: true, msg: "Updated successfully" }
        else
            render json: { result: false, msg: "Failed to update" }
        end
    end



    private

    def user_params
        params.permit(:name, :email, :password, :password_confirmation )
    end

    def set_user
        @user = current_user
    end
    
end
