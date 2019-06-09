module ApplicationHelper

	def get_tasks
      Task.all.by_active.pluck(:t_name,:id)
	end

	def get_users
	  User.all.pluck(:name,:id)
	end
end
