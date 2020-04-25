# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index'
  get '/tasks/new_task', to: 'tasks#new_task'
  post '/tasks', to: 'tasks#create'
  patch '/tasks/:id', to: 'tasks#change'
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  delete '/tasks/:id', to: 'tasks#destroy', as: 'destroy'
  get '/tasks/edit/:id', to: 'tasks#edit'
  get '/tasks/complete_task/:id', to: 'tasks#complete_task'
end
