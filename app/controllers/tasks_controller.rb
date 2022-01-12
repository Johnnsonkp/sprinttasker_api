class TasksController < ApplicationController
    before_action :authorized
    before_action :set_task, only: [:show, :update, :destroy]

    def index 
        @tasks = Task.where(user_id: @user.id)
        # @task = Task.filter(task => task.user_id)
        # @task = Task.where(user_id: Current.user)

        # @tasks = Task.all 
        render json: @tasks
    end 

    def show 
        render json: @task 
    end 

    def usertask
        
        @task = UserTask.all
        render json: @task 
    end 

    def update 
        if @task.update(task_params)
            render json: @task
        else 
            render json: @task.errors, status: :unprocessable_entity
        end
    end 

    def destroy 
        @task.destroy 
    end

    def create 
        @task = Task.new(task_params)
        @task.user_id = @user.id

        if @task.save 
            render json: @task, status: :created, location: @task
        else 
            render json: @task.errors, status: :unprocessable_entity
        end
    end 

    private 
        def set_task
            @task = Task.find(params[:id])
        end

        def task_params 
            params.require(:task).permit(:id, :name, :completed, :description, :subtask, :timer )
            # params.permit(:task)
            # params.fetch(:task, {}).permit(:id, :name, :completed)
        end
end
