class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
  end

# CREATE controller
  def new_form
  end

  def create_row
    p = Director.new
    p.name       = params["the_name"]
    p.bio        = params["the_bio"]
    p.dob        = params["the_dob"]
    p.image_url  = params["the_image"]
    p.save

    redirect_to("http://localhost:3000/directors")
  end

# READ controller
  def show
    @director = Director.find(params["id"])
  end

# UPDATE controller
  def edit_form
    @director = Director.find(params["id"])
  end

  def update_row
    p = Director.find(params["id"])
    p.name       = params["the_name"]
    p.bio        = params["the_bio"]
    p.dob        = params["the_dob"]
    p.image_url  = params["the_image"]
    p.save

    redirect_to("http://localhost:3000/directors")
  end


# DELETE controller

  def destroy
    @director = Director.find(params["id"])
    @director.destroy

    redirect_to("http://localhost:3000/directors")
  end


end

