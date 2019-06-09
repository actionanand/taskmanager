class Task < ApplicationRecord
	has_many :assign_tasks
	validates :t_name, presence: true
	validates :t_discription, presence: true
	scope :by_active, -> { where(is_assigned: false) }
end
