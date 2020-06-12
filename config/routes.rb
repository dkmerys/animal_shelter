Rails.application.routes.draw do
  resources :animals do
    collection do
      get :search
    end
  end
end
