class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create #login method
        # Two possibilities: Teacher or Student is logging in:

        if Teacher.find_by(username: user_login_params[:username]) 
            @user = Teacher.find_by(username: user_login_params[:username])
            @serialized = TeacherSerializer.new(@user)
            end
        elsif Student.find_by(username: user_login_params[:username])
            @user = Student.find_by(username: user_login_params[:username])
            @serialized = StudentSerializer.new(@user)
        end
        
       @user && @user.authenticate(user_login_params[:password])
            @token = encode_token(@user)
            render json: { user: @serialized, jwt: @token }
        else
            render json: { error: 'Invalid username or password' }, status: :unauthorized
        end
    end

    def show
        @user = Teacher.find_by(id: user_id) ||= Student.find_by(id: user_id)
        if logged_in?
            render json: {id: @user.id, username: @user.username}
        else
            render json: { error: 'No user could be found'}, status: 401
        end
    end

  private
    def user_login_params
        params.require(:auth).permit(:username, :password, :admin)
    end
end
