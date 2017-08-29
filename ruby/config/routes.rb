Rails.application.routes.draw do
    root 'samples#index'
    resources :samples, only: [:index, :show]
end
