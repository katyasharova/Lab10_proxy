Rails.application.routes.draw do
  root 'home#input'
  get 'home/input', :as => 'input'
  get 'home/output', :as => 'output'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

