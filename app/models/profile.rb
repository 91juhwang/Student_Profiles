class Profile < ActiveRecord::Base
	belongs_to :student
	has_many :educations, dependent: :destroy
	has_many :experiences, dependent: :destroy
	has_many :projects, dependent: :destroy
	has_many :skills, dependent: :destroy
	has_attached_file :avatar, styles: {medium: "250x250>", thumb: "125x125>", default_url: "/images/missing.png"}
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	validates_uniqueness_of :student
end
