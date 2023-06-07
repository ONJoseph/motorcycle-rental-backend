Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post 'signup', to: 'users/registrations#create'
      post 'login', to: 'users/sessions#create'
      delete 'logout', to: 'users/sessions#destroy'

      resources :vehicles
      resources :users, only: [:index] do
        resources :reservations, only: [:create, :index, :destroy, :show, :update]
      end
    end
  end
end