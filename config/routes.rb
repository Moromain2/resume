Rails.application.routes.draw do

  root to: "pages#home"

  get "pages/experience" => "pages#experience"
  get "pages/education" => "pages#education"
  get "pages/projects" => "pages#projects"
  get "pages/skills" => "pages#skills"
  get "pages/approach" => "pages#approach"
  get "pages/contact" => "pages#contact"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
