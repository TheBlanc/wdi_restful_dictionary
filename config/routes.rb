Rails.application.routes.draw do
  resources :entries
  get '/', to: 'entries#index'
end
