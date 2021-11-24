Rails.application.routes.draw do
  devise_for :users, 
              controllers: {
                sessions: 'users/sessions',
                registrations: 'users/registrations'
              }

  root to: "articles#index"
  resources :articles
  resources :users

    get '*path', to: "application#fallback_index_html", constraints: ->(request) do
    !request.xhr? && request.format.html?
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
