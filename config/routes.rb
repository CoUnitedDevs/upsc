Rails.application.routes.draw do
  root "landing#home"
  resources :quiz_questions
  resources :current_affairs
  resources :quizzes
  resources :questions
  resources :topics
  resources :categories
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
