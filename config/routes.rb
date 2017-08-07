Rails.application.routes.draw do
  # Routes for the Player resource:
  # CREATE
  get "/players/new", :controller => "players", :action => "new"
  post "/create_player", :controller => "players", :action => "create"

  # READ
  get "/players", :controller => "players", :action => "index"
  get "/players/:id", :controller => "players", :action => "show"

  # UPDATE
  get "/players/:id/edit", :controller => "players", :action => "edit"
  post "/update_player/:id", :controller => "players", :action => "update"

  # DELETE
  get "/delete_player/:id", :controller => "players", :action => "destroy"
  #------------------------------

  # Routes for the Team resource:
  # CREATE
  get "/teams/new", :controller => "teams", :action => "new"
  post "/create_team", :controller => "teams", :action => "create"

  # READ
  get "/teams", :controller => "teams", :action => "index"
  get "/teams/:id", :controller => "teams", :action => "show"

  # UPDATE
  get "/teams/:id/edit", :controller => "teams", :action => "edit"
  post "/update_team/:id", :controller => "teams", :action => "update"

  # DELETE
  get "/delete_team/:id", :controller => "teams", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
