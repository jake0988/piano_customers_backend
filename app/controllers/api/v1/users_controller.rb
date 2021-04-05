class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    # byebug
    render json: UserSerializer.new(@users)
  end

  def create
    @user = User.new(user_params)
    # byebug
    if @user.save
      render json: UserSerializer.new(@user), status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    if @user.save
      render json: UserSerializer.new(@user), status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    # byebug
    @user.delete
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone_number, :notes, :category_id, :address, :password, :number_of_pianos, :id, :technician_notes)
  end

end
