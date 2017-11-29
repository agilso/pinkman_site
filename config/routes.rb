Rails.application.routes.draw do
 
 	namespace :api do
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '*path', to: 'main#app'
  
  
end
