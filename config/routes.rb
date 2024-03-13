Rails.application.routes.draw do
  resources(:customers)
  resources(:books)
  resources(:authors)
  # root("authors#index")
end
