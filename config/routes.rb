Rails.application.routes.draw do
  resources :preys
  resources :dinosaurs
  resources :dinosaur_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
