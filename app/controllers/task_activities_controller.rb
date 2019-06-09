class TaskActivitiesController < ApplicationController
 def index
    @assign_tasks = AssignTask.includes(:assignee,:task).by_user(current_user)
  end

  def change_status
    @object = AssignTask.where(id: params[:task_id]).first
    if (@object.status == 'New')
      @object.update(status: 2)
    elsif (@object.status == 'Inprogress') 
      @object.update(status: 3)
    end
    @assign_tasks = AssignTask.includes(:assignee,:task).by_user(current_user)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assign_task
      @assign_task = AssignTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assign_task_params
      params.require(:assign_task).permit(:task_id, :assignee_id)
    end

end
