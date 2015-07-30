Rails.application.routes.draw do

  get("/directors", { :controller => "directors", :action => "index" })

end


  # # Routes to Create
  # get("/photos/new", { :controller => "photos", :action => "new_form" })
  # get("/create_photo", { :controller => "photos", :action => "create_row" })

  # # Routes to READ photos
  # get("/photos",           { :controller => "photos", :action => "index" })
  # get("/photos/:id",       { :controller => "photos", :action => "show" })

  # # Routes to Delete
  # get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })

  # # Routes to Edit
  # get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })
  # get("/update_photo/:id", { :controller => "photos", :action => "update_row" })

