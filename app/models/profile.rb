class Profile < ActiveRecord::Base
	belongs_to :student
	has_many :educations, dependent: :destroy
	has_many :experiences, dependent: :destroy
	has_many :projects, dependent: :destroy
	has_many :skills, dependent: :destroy

	validates_uniqueness_of :student
end
