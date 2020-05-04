class Api::V1::StudentsController < ApplicationController
    before_action :authorized, except: [:create]

    def index
        @students = Student.all
        render json: @students
    end

    def profile
        puts StudentSerializer.new(current_user)
        render json: {user: StudentSerializer.new(current_user)}
    end
    
    def create
        @user = Student.new(user_params)
        if @user.valid?
            @user.admin = false
            @user.save
            @token = encode_token(@user)
            render json: { user: StudentSerializer.new(@user), jwt: @token }
        else
            render json: { error: 'Failed to create new student account' }, status: :not_acceptable
        end
    end
    
  private
    
    def user_params
        params.require(:student).permit(:username, :password, :name, :admin)
    end

end
