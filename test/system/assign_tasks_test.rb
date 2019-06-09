require "application_system_test_case"

class AssignTasksTest < ApplicationSystemTestCase
  setup do
    @assign_task = assign_tasks(:one)
  end

  test "visiting the index" do
    visit assign_tasks_url
    assert_selector "h1", text: "Assign Tasks"
  end

  test "creating a Assign task" do
    visit assign_tasks_url
    click_on "New Assign Task"

    fill_in "Assignee", with: @assign_task.assignee_id
    fill_in "Assigner", with: @assign_task.assigner_id
    fill_in "Status", with: @assign_task.status
    fill_in "Task", with: @assign_task.task_id
    click_on "Create Assign task"

    assert_text "Assign task was successfully created"
    click_on "Back"
  end

  test "updating a Assign task" do
    visit assign_tasks_url
    click_on "Edit", match: :first

    fill_in "Assignee", with: @assign_task.assignee_id
    fill_in "Assigner", with: @assign_task.assigner_id
    fill_in "Status", with: @assign_task.status
    fill_in "Task", with: @assign_task.task_id
    click_on "Update Assign task"

    assert_text "Assign task was successfully updated"
    click_on "Back"
  end

  test "destroying a Assign task" do
    visit assign_tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assign task was successfully destroyed"
  end
end
