require 'test_helper'

class AssignTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assign_task = assign_tasks(:one)
  end

  test "should get index" do
    get assign_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_assign_task_url
    assert_response :success
  end

  test "should create assign_task" do
    assert_difference('AssignTask.count') do
      post assign_tasks_url, params: { assign_task: { assignee_id: @assign_task.assignee_id, assigner_id: @assign_task.assigner_id, status: @assign_task.status, task_id: @assign_task.task_id } }
    end

    assert_redirected_to assign_task_url(AssignTask.last)
  end

  test "should show assign_task" do
    get assign_task_url(@assign_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_assign_task_url(@assign_task)
    assert_response :success
  end

  test "should update assign_task" do
    patch assign_task_url(@assign_task), params: { assign_task: { assignee_id: @assign_task.assignee_id, assigner_id: @assign_task.assigner_id, status: @assign_task.status, task_id: @assign_task.task_id } }
    assert_redirected_to assign_task_url(@assign_task)
  end

  test "should destroy assign_task" do
    assert_difference('AssignTask.count', -1) do
      delete assign_task_url(@assign_task)
    end

    assert_redirected_to assign_tasks_url
  end
end
