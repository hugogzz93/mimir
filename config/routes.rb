Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  get 'home/calendar', to: 'home#calendar', as: 'calendar'
  resources :money, :banners, :tasks, :activities, :weights, :foods, :events, :tags

  get 'users/:id/expenses', to: 'users#expenses', as: 'expenses'

  # get 'activity/create'

  # get 'tag/create'

  # get 'money/create'

  # get 'activities/show'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
