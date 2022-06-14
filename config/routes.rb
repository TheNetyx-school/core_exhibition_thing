Rails.application.routes.draw do
  root "pages#home"

  get "/ee",                to: "pages#ee"
  get "/tok",               to: "pages#tok"

  get "/tok/orig/:object",  to: "pages#tok_original", as: :object
  get "/tok/image/:object", to: "pages#tok_image",    as: :object_image
end
