Rails.application.routes.draw do
  root "chatroom#index"
  get 'login', to:'login#new'  
  post 'login', to: 'login#create'
  delete 'logout', to: 'login#destroy'
  post 'message', to: 'messages#create'


  mount ActionCable.server, at:'/cable'
end
