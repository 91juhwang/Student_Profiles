class SkillsController < ApplicationController
	def create
		@skill = Skill.new
	end

end
