Rails.application.routes.draw do
  # Routes for the Tag resource:
  # CREATE
  get "/tags/new", :controller => "tags", :action => "new"
  post "/create_tag", :controller => "tags", :action => "create"

  # READ
  get "/tags", :controller => "tags", :action => "index"
  get "/tags/:id", :controller => "tags", :action => "show"

  # UPDATE
  get "/tags/:id/edit", :controller => "tags", :action => "edit"
  post "/update_tag/:id", :controller => "tags", :action => "update"

  # DELETE
  get "/delete_tag/:id", :controller => "tags", :action => "destroy"
  #------------------------------

  # Routes for the Tagging resource:
  # CREATE
  get "/taggings/new", :controller => "taggings", :action => "new"
  post "/create_tagging", :controller => "taggings", :action => "create"

  # READ
  get "/taggings", :controller => "taggings", :action => "index"
  get "/taggings/:id", :controller => "taggings", :action => "show"

  # UPDATE
  get "/taggings/:id/edit", :controller => "taggings", :action => "edit"
  post "/update_tagging/:id", :controller => "taggings", :action => "update"

  # DELETE
  get "/delete_tagging/:id", :controller => "taggings", :action => "destroy"
  #------------------------------

  # Routes for the Restaurant resource:
  # CREATE
  get "/restaurants/new", :controller => "restaurants", :action => "new"
  post "/create_restaurant", :controller => "restaurants", :action => "create"

  # READ
  get "/restaurants", :controller => "restaurants", :action => "index"
  get "/restaurants/:id", :controller => "restaurants", :action => "show"

  # UPDATE
  get "/restaurants/:id/edit", :controller => "restaurants", :action => "edit"
  post "/update_restaurant/:id", :controller => "restaurants", :action => "update"

  # DELETE
  get "/delete_restaurant/:id", :controller => "restaurants", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
