Rails.application.routes.draw do

  get 'users_controller/new'
  root to: 'static_pages#home'

  get '/contact', to: 'static_pages#contact', as: 'contact'

  get '/about', to: 'static_pages#about', as: 'about'

  get '/about/moi', to: 'static_pages#moi', as: 'moi'

  get '/about/mon_groupe', to: 'static_pages#mongroupe', as: 'mongroupe'

  get '/new_user', to: 'users_controller#new', as: 'newuser'

  post '/users', to: 'users_controller#create', as: 'utilisateur'

  get '/users/:username', to: 'users_controller#show', as: 'show'

  get '/rate', to: 'static_pages#rate', as: 'rate'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
