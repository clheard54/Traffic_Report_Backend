class Api::V1::ResponsesController < ApplicationController
    # before_action :authorized

    def index
        @responses = Response.all
        render json: @responses
    end


    def create
        x = DateTime.now
        newDay = x.strftime("%m%d.%H%M")
        full_params = {"answer"=>response_params[:answer], "datatype"=>response_params[:datatype], "day"=>newDay, "courses_student_id"=>response_params[:courses_student_id], "course_id"=>response_params[:course_id], "student_id"=>response_params[:student_id]}
        @response = Response.new(full_params)
        @response
        if @response.valid?
            @response.save
            render json: @response
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
        params.require(:response).permit(:datatype, :answer, :day, :courses_student_id, :student_id, :course_id, :created_at)
    end
end
