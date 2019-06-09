class Project < ApplicationRecord
  validates :p_name, presence: true
  validates :p_discription, presence: true
end
