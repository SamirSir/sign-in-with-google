class Users::SessionsController < ApplicationController

	def after_sign_out_path_for(resource)
		root_path
		# new_user_session_path : if authentication is compulsory
	end

	def after_sign_in_path_for(resource)
		stored_location_for(resource) || main_page_path
	end

end
