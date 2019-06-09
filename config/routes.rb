Rails.application.routes.draw do
  resources :assign_tasks
  resources :tasks
  resources :projects
  devise_for :users, controllers: {
                        :registrations => 'user/registrations',
                    }
  resources :task_assig
   resources :task_activities, only: [:index] do
    collection do
      get :change_status
    end
   end
  
	root to: "dashbord#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
