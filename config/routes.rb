Podcasts::Application.routes.draw do
  resources :episodes, only: [:index]
     
end
