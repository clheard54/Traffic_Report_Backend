class ApplicationController < ActionController::API

    def encode_token(user)
        # pass in user as payload
        JWT.encode( {user_id: user.id, username: user.username, admin: user.admin}, Rails.application.credentials.dig(:token_key), 'HS256')
    end

    def decoded_token
        begin
            JWT.decode(token, Rails.application.credentials.dig(:token_key), true, algorithm: 'HS256')
        rescue JWT::DecodeError
            [{error: "Invalid Token"}]
        end
    end

    def authorized
        render json: {message: "Please log in"}, status: :unauthorized unless logged_in?
    end

    def token
        request.headers['Authorization']
    end

    def user_id
        decoded_token.first['user_id']
    end

    def user_admin
        decoded_token.first['admin']
    end

    def current_user
        if user_admin
            @user ||= Teacher.find_by(id: user_id)
        else
            @user ||= Student.find_by(id: user_id)
        end
    end

    def logged_in?
        !!current_user
    end

    def fallback_index_html
        render :file => 'public/index.html'
    end
end
