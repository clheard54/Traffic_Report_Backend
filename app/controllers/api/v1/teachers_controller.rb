class Api::V1::TeachersController < ApplicationController
    before_action :authorized, except: :create


    def profile
      puts TeacherSerializer.new(currentUser)
      render json: {user: TeacherSerializer.new(currentUser)}
    end
  
    def create
      @user = Teacher.new(user_params)
      if @user.valid?
          #use encode_token method to do JWT.encode (AppController)
          @user.admin = true
          @user.save
          @token = encode_token(@user)
          render json: { user: TeacherSerializer.new(@user), jwt: @token }
      else
          render json: { error: 'Failed to create new user account' }, status: :not_acceptable
      end
    end
  
  private
  
    def user_params
      params.require(:teacher).permit(:username, :password, :name, :admin)
    end

end
