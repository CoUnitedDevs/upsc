Rails.application.routes.draw do
  resources :quiz_questions
  resources :current_affairs
  resources :quizzes
  resources :questions
  resources :topics
  resources :options
  resources :categories
  devise_for :users
  root "admin#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
