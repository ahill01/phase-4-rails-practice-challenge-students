class InstructorsController < ApplicationController

    def index
        all_instructors = Instructor.all
        render json: all_instructors, status: :ok
    end

    def show
    instructor = Instructor.find(params[:id])

    render json: instructor, status: :ok
    end

    def destroy
        instructor = Instructor.find(params[:id])
        instructor.destroy
        render json: instructor, status: 202
    end

    def update
        
    end

    private
    def instructor_params
        params.permit(:name)
    end
end
