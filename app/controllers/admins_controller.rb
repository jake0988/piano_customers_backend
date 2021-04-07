class Api::V1::AdminsController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def profile
    byebug
    render json: { admin: AdminSerializer.new(current_user) }, status: :accepted
  end

  def create
    @admin = Admin.create(admin_params)
    if @admin.valid?
      @token = encode_token(user_id: @user.id)
      render json: { admin: AdminSerializer.new(@admin), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create admin' }, status: :not_acceptable
    end
  end

  def show

  end

  private

  def admin_params
    params.require(:admin).permit(:avatar, :username, :password, :email)
  end
end
