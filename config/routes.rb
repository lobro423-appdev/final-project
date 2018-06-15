Rails.application.routes.draw do
  devise_for :users
  # Routes for the Category resource:

  # CREATE
  get("/categories/new", { :controller => "categories", :action => "new_form" })
  post("/create_category", { :controller => "categories", :action => "create_row" })

  # READ
  get("/categories", { :controller => "categories", :action => "index" })
  get("/categories/:id_to_display", { :controller => "categories", :action => "show" })

  # UPDATE
  get("/categories/:prefill_with_id/edit", { :controller => "categories", :action => "edit_form" })
  post("/update_category/:id_to_modify", { :controller => "categories", :action => "update_row" })

  # DELETE
  get("/delete_category/:id_to_remove", { :controller => "categories", :action => "destroy_row" })

  #------------------------------

  # Routes for the Tweet resource:

  # CREATE
  get("/tweets/new", { :controller => "tweets", :action => "new_form" })
  post("/create_tweet", { :controller => "tweets", :action => "create_row" })

  # READ
  get("/tweets", { :controller => "tweets", :action => "index" })
  get("/tweets/:id_to_display", { :controller => "tweets", :action => "show" })

  # UPDATE
  get("/tweets/:prefill_with_id/edit", { :controller => "tweets", :action => "edit_form" })
  post("/update_tweet/:id_to_modify", { :controller => "tweets", :action => "update_row" })

  # DELETE
  get("/delete_tweet/:id_to_remove", { :controller => "tweets", :action => "destroy_row" })

  #------------------------------
  
  root 'tweets#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
