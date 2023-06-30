Rails.application.routes.draw do
 # get 'documents/index'
  #get 'documents/new'
 # get 'documents/create'
  #get 'documents/edit'
  #get 'documents/update'
  #get 'documents/show'
  #get 'documents/destroy'
   root 'home#index'
   resources :employees
    resources :documents
  get 'ab' => 'pages#about_us'
  get 'contact' => 'pages#contact_us'
  get 'privacy-policy' => 'pages#privacy_policy'
  get 'term-and-condition' => 'pages#terms_and_condition'

  # Defines the root path route ("/")
  # root "articles#index"
end
