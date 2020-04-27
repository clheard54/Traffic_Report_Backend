class Api::V1::CoursesStudentsController < ApplicationController

    def index
        @courses_students = CoursesStudent.all
        render json: @courses_students
    end

end
