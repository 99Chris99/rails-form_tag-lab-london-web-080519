Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :new,]
  
  post '/students/new', to: 'students#create', as: 'student_new' 
  get '/students/:id', to: 'students#show', as: 'student'
end
