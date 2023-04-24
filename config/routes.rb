Rails.application.routes.draw do
  devise_for :users

  resources :vendors do
    member do
      get 'review'
    end
    resources :vendor_reviews
  end

  resources :users
  resources :reports
  resources :contracts

  # Contract Documents
  # GET
  get "/contract_documents/:id", to: "contract_documents#download", as: "download_contract_document"


  # Map root path to pages/home
  root :to => "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Example of regular route:
  # Defines the root path route ("/")
  # root "articles#index"
end
