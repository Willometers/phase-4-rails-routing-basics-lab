class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades 
        ordered = Student.order(grade: :desc)
        render json: ordered
    end

end
