class Api::V1::ResponsesController < ApplicationController
    before_action :authorized except: :index

    def index
        @responses = Response.all
        render json: @responses
    end


    def create
        x = Time.now
        newDay = x.to_f*1000
        full_params = {"answer"=>response_params[:answer], "datatype"=>response_params[:datatype], "day"=>newDay, "feedback"=>response_params[:feedback], "courses_student_id"=>response_params[:courses_student_id], "course_id"=>response_params[:course_id], "student_id"=>response_params[:student_id]}
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
        params.require(:response).permit(:datatype, :answer, :day, :feedback, :courses_student_id, :student_id, :course_id, :created_at)
    end
end
