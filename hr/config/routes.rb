Rails.application.routes.draw do
  resources :resumes do
    resources :skills
  end
  
  resources :resumes do
    resources :languages
  end
  
  resources :resumes do
    resources :work_experiences
  end
  
  resources :resumes do
    resources :educations
  end
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
