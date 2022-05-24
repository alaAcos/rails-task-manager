Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    # CREATE
    get '/tasks/new', to: 'tasks#new'
    post '/tasks', to: 'tasks#create'
    # READ
    get '/tasks', to: 'tasks#list'
    get '/tasks/:id', to: 'tasks#find', as: :task
    # UPDATE
    get '/tasks/:id/edit', to: 'tasks#edit'
    patch '/tasks/:id', to: 'tasks#update'
  end
end
