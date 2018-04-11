Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :books do
    collection do
      post 'do_ordering'
    end
  end
end
