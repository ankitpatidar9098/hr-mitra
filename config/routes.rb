Rails.application.routes.draw do
   root 'home#index'
   resources :employees
  get 'ab' => 'pages#about_us'
  get 'contact' => 'pages#contact_us'
  get 'privacy-policy' => 'pages#privacy_policy'
  get 'term-and-condition' => 'pages#terms_and_condition'

  # Defines the root path route ("/")
  # root "articles#index"
end
