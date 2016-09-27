Rails.application.routes.draw do
  get "/auth/auth0/callback" => "auth0#callback"
  get "/auth/failure" => "auth0#failure"
  get "auth/login" => "auth0#login"

	resources :bikes, except: :index

  get 'welcome/index'

  root 'welcome#index'

end
