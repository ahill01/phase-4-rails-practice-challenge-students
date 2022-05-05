class StudentsController < ApplicationController
    def index
        render json: Student.all, status: :ok
    end

    def show
        student = Student.find(params[:id])
        render json: student, status: :ok
    end

    def create
        new_student = Student.create!(student_params)
        render json: new_student, status: 202
    end

    def update
        update_student = Student.find(params[:id])
        update_student.name = params[:name]
        update_student.major = params[:major]
        update_student.instructor_id = params[:instructor_id]
        render json: update_student, status: 202
    end

    def destroy
        student = Student.find(params[:id])
        student.destroy
        render json: student, status: 202
    end

    private
    def student_params
        params.permit(:name,:major,:age,:instructor_id)
    end
end
