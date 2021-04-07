class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @admin = Admin.find_by(username: admin_login_params[:username])
    #admin#authenticate comes from BCrypt
    if @admin && @admin.authenticate(admin_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ admin_id: @admin.id })
      render json: { admin: AdminSerializer.new(@admin), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end

  private

  def admin_login_params
    # params { admin: {username: 'Chandler Bing', password: 'hi' } }
    params.require(:admin).permit(:username, :password)
  end
end
