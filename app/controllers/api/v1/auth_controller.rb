class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    byebug
    @admin = Admin.find_by(username: admin_login_params[:username])
    #admin#authenticate comes from BCrypt
    if @admin && @admin.authenticate(admin_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ admin_id: @admin.id })
      @user = User.all
      render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
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
