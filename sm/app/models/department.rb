class Department < ApplicationRecord
    has_many :students
	has_many :modules
    has_many :results
    
    validates :name, presence: true
    validates :full_name, presence: true
end
