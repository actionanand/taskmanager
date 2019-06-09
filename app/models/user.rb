class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :assignee_users, class_name: 'AssignTask', foreign_key: 'assignee_id', primary_key: 'id'
  has_many :assigners, class_name: 'AssignTask', foreign_key: 'assigner_id', primary_key: 'id'

def has_role?
	self.role_id == 1
end

end
