Rails.application.routes.draw do
  scope :v1 do
    mount_devise_token_auth_for "User", at: "auth"
  end

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
