Rails.application.routes.draw do
  root "pages#home"

  get "/ee",  to: "pages#ee"
  get "/tok", to: "pages#tok"
end
