Rails.application.routes.draw do
  root 'major_tasks#index'
  get 'major_tasks/index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users do
    resources :major_tasks
  end

  resources :major_tasks do
    resources :sub_tasks
  end

  resources :sub_tasks do
    get :sub_task_modal, on: :member
    resources :detail_tasks
  end

  resources :detail_tasks do
    get :detail_task_modal, on: :member
  end

  resources :sessions do
    collection do
    end
  end
  
end
