class StaticController < ApplicationController
	def home
		case
		when current_spartan.admin
			admin_home
		else
			user_home
		end
	end

	def admin_home
		render "spartans/index"
	end

	def user_home
		render "projects/index"
	end
end