class SprintsController < ApplicationController
    before_action :authorized
    before_action :set_sprint, only: [:show, :update, :destroy]
   
  
    # GET /notes
    def index
      # @notes = Note.where(user_id: @user.id)
  
      @sprints = Sprint.all
      render json: @sprints
    end
  
    # GET /notes/1
    def show
      render json: @sprint
    end
  
    # POST /notes
    def create
      @sprint = Sprint.new(sprint_params)
      # @note.user = @user
      @sprint.user_id = @user.id #//add to schema */
  
      if @sprint.save
        render json: @sprint, status: :created, location: @sprint
      else
        render json: @sprint.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /notes/1
    def update
      if @sprint.update(sprint_params)
        render json: @sprint
      else
        render json: @sprint.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /notes/1
    def destroy
      @sprint.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_sprint
        @sprint = Sprint.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def sprint_params
        params.require(:sprint).permit(:name, :objective)
      end
  end
  