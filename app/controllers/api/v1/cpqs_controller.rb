class Api::V1::CpqsController < ApplicationController
    before_action :authorized, except: :index

    def index
        @cpqs = Cpq.all
        render json: @cpqs
    end

    def create
        @cpq = Cpq.create(cpq_params)
        if @cpq.valid?
            render json: @cpq
        else
            render json: { error: 'Failed to create question' }, status: :not_acceptable
        end
    end

    def destroy
        @cpq = Cpq.find(params[:id])
        if @cpq 
            @cpq.destroy 
            render json: {message: "Question successfully deleted"}
        else 
            render json: {message: 'Could not delete question'}, status: :not_acceptable
        end
    end

    private
    def cpq_params
        params.require(:cpq).permit(:question, :day, :course_id, :cpq)
    end
end
