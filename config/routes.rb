Rails.application.routes.draw do

  # # Routes to CREATE DIRECTOR
  get("/directors/new", { :controller => "directors", :action => "new_form" })
  get("/create_director", { :controller => "directors", :action => "create_row" })

  # # Routes to READ DIRECTOR
  get("/directors",        { :controller => "directors", :action => "index" })
  get("/directors/:id",    { :controller => "directors",    :action => "show" })

  # # Routes to DELETE DIRECTOR
  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })

  # # Routes to UPDATE DIRECTOR
  get("/directors/:id/edit", { :controller => "directors", :action => "edit_form" })
  get("/update_director/:id", { :controller => "directors", :action => "update_row" })

#__________________________________________

  # # Routes to CREATE ACTOR
  get("/actors/new",    { :controller => "actors", :action => "new_form" })
  get("/create_actor",  { :controller => "actors", :action => "create_row" })

  # # Routes to READ ACTORS
  get("/actors",        { :controller => "actors", :action => "index" })
  get("/actors/:id",    { :controller => "actors",    :action => "show" })

  # # Routes to DELETE ACTOR
  get("/delete_actor/:id", { :controller => "actors", :action => "destroy" })

  # # Routes to UPDATE DIRECTOR
  get("/actors/:id/edit", { :controller => "actors", :action => "edit_form" })
  get("/update_actor/:id", { :controller => "actors", :action => "update_row" })

#__________________________________________

  # # Routes to CREATE MOVIE
  get("/movies/new",    { :controller => "movies", :action => "new_form" })
  get("/create_movie",  { :controller => "movies", :action => "create_row" })

  # # Routes to READ MOVIES
  get("/movies",        { :controller => "movies", :action => "index" })
  get("/movies/:id",    { :controller => "movies",    :action => "show" })

  # # Routes to DELETE MOVIE
  get("/delete_movie/:id", { :controller => "movies", :action => "destroy" })

  # # Routes to UPDATE MOVIE
  get("/movies/:id/edit", { :controller => "movies", :action => "edit_form" })
  get("/update_movie/:id", { :controller => "movies", :action => "update_row" })


end








