class Api::V1::CoursesController < ApplicationController
    before_action :authorized, except: :index

    def index
        @courses = Course.all
        render json: @courses
    end

    def show
        @course = Course.find(params[:id])
    end

    def create
        @course = Course.new(course_params)
        if @course.valid?
            @course.save
            render json: { course: CourseSerializer.new(@course)}
        else
            render json: { error: 'Failed to submit course' }, status: :not_acceptable
        end
    end

    def update 
        @course = Course.find(params[:id])
        @course.update(course_params)
        render json: @course
    end

    def destroy
        @course = Course.find(params[:id])
        if @course 
            @course.destroy 
            render json: {message: "Course successfully deleted"}
        else 
            render json: {message: 'Could not delete course'}, status: :not_acceptable
        end
    end

  private

    def course_params
        params.require(:course).permit(:title, :teacher_id)
    end
end
