class Api::V1::QuestionsController < ApplicationController
    before_action :authorized

    def index
        @questions = Question.all
        render json: @questions
    end

    def create
        @question = Question.create(question_params)
        if @question.valid?
            render json: @question
        else
            render json: { error: 'Failed to submit course' }, status: :not_acceptable
        end
    end

    def update
        @question = Question.find(params[:id])
        @question.update(question_params)
        render json: @question
    end

    def destroy
        @question = Question.find(params[:id])
        if @question 
            @question.destroy 
            render json: {message: "Question successfully deleted"}
        else 
            render json: {message: 'Could not delete question'}, status: :not_acceptable
        end
    end

  private

    def question_params
        params.require(:question).permit(:id, :text, :course_id)
    end
end
