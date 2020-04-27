class Api::V1::ResponsesController < ApplicationController
    # before_action :authorized

    def index
        @responses = Response.all
        render json: @responses
    end

    def create
        @response = Response.new(response_params)
        @response.day = DateTime.now.to_s.slice(5, 5).sub!('-', '.').to_f
        if @response.valid?
            @response.save
            render json: { response: ResponseSerializer.new(@response)}
        else
            render json: { error: 'Failed to submit response' }, status: :not_acceptable
        end
    end

    def update 
        @response = Response.find(params[:id])
        @response.update(response_params)
        render json: @response
    end

  private

    def response_params
        params.require(:response).permit(:datatype, :answer, :day, :courses_student_id, :created_at)
    end
end
