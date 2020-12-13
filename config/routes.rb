Rails.application.routes.draw do
  resources :students, only: [:index, :show, :update]
  # why doesn't the first string need to end with activate_student?
  get '/students/:id/activate', to: 'students#update', as: 'activate_student'
end