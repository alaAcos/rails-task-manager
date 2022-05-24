Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    get '/tasks', to: 'tasks#list'
    get '/tasks/:id', to: 'tasks#find'
    get '/new', to: 'tasks#new'
    post '/tasks', to: 'tasks#create'
  end
end
