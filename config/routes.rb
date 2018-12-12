Rails.application.routes.draw do
  resources :experiences

  get 'experiences/index'
  get 'experiences/show'
  get 'experiences/new'
  get 'experiences/edit'
  get 'experiences/create'
  get 'experiences/update'
  get 'experiences/destroy'
  root to: "pages#home"

  get "pages/experience" => "pages#experience"
  get "pages/education" => "pages#education"
  get "pages/projects" => "pages#projects"
  get "pages/skills" => "pages#skills"
  get "pages/approach" => "pages#approach"
  get "pages/contact" => "pages#contact"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
