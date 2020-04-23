Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :teachers
      resources :students
      resources :courses
      post '/login', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      get '/admin_profile', to: 'teachers#profile'
      get '/student_profile', to: 'students#profile'
      post '/admin_signup', to: 'teachers#create'
      post '/student_signup', to: 'students#create'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
