class Api::V1::CoursesStudentsController < ApplicationController

    def index
        @courses_students = CoursesStudent.all
        render json: @courses_students
    end

    def create
        @enroll = CoursesStudent.create(enroll_params)
        if @enroll.valid?
            render json: @enroll
        else
            render json: { error: 'Failed to add course' }, status: :not_acceptable
        end
    end

    private

    def enroll_params
        params.require(:enrollment).permit(:student_id, :course_id)
    end
end
