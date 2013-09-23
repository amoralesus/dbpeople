DbPeople::Application.routes.draw do
  resources :people do
    collection do
      get 'find'
    end
  end

  root 'people#index'


end
