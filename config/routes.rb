Rails.application.routes.draw do

    mount_devise_token_auth_for "User", at: "auth"


  namespace :v1 do
    resources :jobs, only: [:create, :index, :update, :destroy] do 
      resources :job_applications, only: [:create]
    end
    resources :job_applications, only: [:index, :show]
    resources :users, path: "/", only: [] do
      collection do
        get :current
      end
    end
  end  
end
