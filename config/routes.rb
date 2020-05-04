Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :teachers
      resources :students
      resources :courses
      resources :assignments
      resources :questions
      resources :responses
      resources :courses_students
      resources :cpqs
      post '/login', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      get '/profile', to: 'students#profile'
      post '/admin_signup', to: 'teachers#create'
      post '/student_signup', to: 'students#create'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
