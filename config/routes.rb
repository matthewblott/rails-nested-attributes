Rails.application.routes.draw do
  resources :books
  resources :authors
  resources(:tasks)
  resources(:projects)

  root("projects#index")
end
