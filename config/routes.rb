TaskApp::Application.routes.draw do

  resources :users do
    post 'create_task', :on => :collection

  end
    match '/users/destroy_task/:id', to: 'users#destory_task',as: "destroy_task_users",via: 'delete'

end
