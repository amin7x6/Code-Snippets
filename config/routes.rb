Rails.application.routes.draw do

  resources :codes

  root "codes#index"
end
