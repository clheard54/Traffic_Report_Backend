class Api::V1::AssignmentsController < ApplicationController
    before_action :authorized

    def index
        @assignments = Assignment.all
        render json: @assignments
    end

    def create
        @assignment = Assignment.create(assignment_params)
        if @assignment.valid?
            render json: @assignment
        else
            render json: { error: 'Failed to submit course' }, status: :not_acceptable
        end
    end

    def update
        @assignment = Assignment.find(params[:id])
        @assignment.update(assignment_params)
        render json: @assignment
    end

    def destroy
        @assignment = Assignment.find(params[:id])
        if @assignment 
            @assignment.destroy 
            render json: {message: "Assignment successfully deleted"}
        else 
            render json: {message: 'Could not delete assigment'}, status: :not_acceptable
        end
    end

  private

    def assignment_params
        params.require(:assignment).permit(:details, :course_id)
    end
end
