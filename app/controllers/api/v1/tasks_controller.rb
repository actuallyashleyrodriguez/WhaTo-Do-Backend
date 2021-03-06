class Api::V1::TasksController < ApplicationController

    def index
        tasks = Task.all

        render json: TaskSerializer.new(tasks)
    end

    def create
        task = Task.new(task_params)

        if task.save
            render json: TaskSerializer.new(task), status: :accepted
        else
            render json: {errors: task.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def update
        task = Task.find_by_id(params[:id])
        task.update(task_params)
        task.save
    end



    private
    

    def task_params
        params.require(:task).permit!
    end
end
