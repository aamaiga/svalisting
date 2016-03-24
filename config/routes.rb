Enterpriseape::Application.routes.draw do
  devise_for :users
  resources :companies do
    collection { post :import }
  end

  get "welcome/index"
  get "welcome/about"
  get "welcome/contact"
  get "welcome/faq"
  get "welcome/pricing"
  get "welcome/features"
  #get "Welcome/signup"
  #get "Welcome/Signin"

  resources :invoices

  root to: 'welcome#index'

end
