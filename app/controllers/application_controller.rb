class ApplicationController < ActionController::API
    before_action :authorized

    def encode_token(user)
        # pass in user as payload
        JWT.encode( {user_id: user.id}, 'crimson-amber-kelly', 'HS256')
    end

    def decoded_token
        begin
            JWT.decode(token, 'crimson-amber-kelly', true, algorithm: 'HS256')
        rescue JWT::DecodeError
            [{error: "Invalid Token"}]
        end
    end

    def authorized
        render json: { message: "Please log in" }, status: :unauthorized unless logged_in?
    end

    def token
        request.headers['Authorization']
    end

    def user_id
        decoded_token.first['user_id']
    end

    def current_user
        @user ||= User.find_by(id: user_id)
    end

    def logged_in?
        !!current_user
    end

end
