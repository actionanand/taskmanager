class AssignTask < ApplicationRecord
	  belongs_to :task
	  belongs_to :assignee, :class_name => "User", :foreign_key => 'assignee_id'
	  belongs_to :assigner, :class_name => "User", :foreign_key => 'assigner_id'
	  after_save :change_task_status
	  enum status: {New: 1, Inprogress: 2, Done: 3}
	  scope :by_user, -> (user_id){ where(assignee_id: user_id) }

	    

	  def change_task_status
	  	self.task.update_columns(is_assigned: true)
	  end
end
