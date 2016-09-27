Rails.application.routes.draw do
	resources :bikes, except: :index

  get 'welcome/index'

  root 'welcome#index'

end
