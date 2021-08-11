Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :job_alerts
  resources :users, param: :_username
  resources :follows
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
end
