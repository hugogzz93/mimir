Rails.application.routes.draw do
  root 'home#index'
 
  get 'home/index'

  # get 'activity/create'

  # get 'tag/create'

  # get 'money/create'

  # get 'activities/show'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
