StackOverflow::Application.routes.draw do

  resources :users
  resources :questions
  resources :responses
  resources :sessions
end
