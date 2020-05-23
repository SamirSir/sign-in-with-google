Rails.application.routes.draw do
  
	root to: 'homes#index'

	get 'main', to: "homes#main", as: :main_page

 	devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks'}

 	# for selected user model routing
 	# devise_scope :users do
 	# 	get 'users/sign_in', to: 'users/sessions#new', as: :new_user_session
	#   get 'users/sign_out', to: 'users/sessions#destroy', as: :destroy_user_session
	# end
end
