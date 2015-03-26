Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "welcometothedungeon", sign_out: "escapetofreedom"}
  root :to => "home#index"
end
