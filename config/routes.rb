Rails.application.routes.draw do
  resources(:addresses)
  resources(:customers)
  resources(:books)
  resources(:authors)
  # root("authors#index")
end
