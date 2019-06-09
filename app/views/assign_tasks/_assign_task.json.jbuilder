json.extract! assign_task, :id, :task_id, :assignee_id, :assigner_id, :status, :created_at, :updated_at
json.url assign_task_url(assign_task, format: :json)
