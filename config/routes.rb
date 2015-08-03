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

  # # Routes to READ ACTORS  photos
  get("/actors",        { :controller => "actors", :action => "index" })
  get("/actors/:id",    { :controller => "actors",    :action => "show" })

end








