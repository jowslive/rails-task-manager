Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Lista todas as tasks
  get 'tasks', to: 'tasks#index'

  # Mostra um form para criar uma nova task
  get 'tasks/new', to: 'tasks#new', as: :new_task

  # Mostra uma das tasks
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Cria uma nova task
  post 'tasks', to: 'tasks#create'

  # Mostra um form para o user editar a tarefa
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # Atualiza a task
  patch 'tasks/:id', to: 'tasks#update'

  # Deleta uma task
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete

  # resources :tasks
  # resources :tasks, except: [:edit, :update]
  # resources :tasks, only: [:index, :show]
end
