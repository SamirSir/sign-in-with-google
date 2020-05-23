class ApplicationController < ActionController::Base
	

	def after_sign_in_path_for(resource)
		main_page_path
	end

	


end
