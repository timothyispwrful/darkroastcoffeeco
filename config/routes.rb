Rails.application.routes.draw do

root "ordering#index"

resources :ordering
post "ordering/accept"
post "ordering/complete"
post "ordering/delete"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
