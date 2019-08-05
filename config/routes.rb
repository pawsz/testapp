Rails.application.routes.draw do
	root 'zadania#index'

	get '/zadania' => 'zadania#index'
	get 'zadania/new' => 'zadania#new'
	post 'zadania' => 'zadania#create'
	get 'zadania/:id' => 'zadania#edit', as: :zadanium
	patch '/zadania/:id' => 'zadania#update'
	delete 'zadania/:id' => 'zadania#destroy'

	get '/projekts' => 'projekts#index'
	get '/projekts/new' => 'projekts#new'
	post 'projekts' => 'projekts#create'
	get 'projekts/:id' => 'projekts#edit', as: :projekt
	patch 'projekts/:id' => 'projekts#update'
	delete 'projekts/:id' => 'projekts#destroy'


end
