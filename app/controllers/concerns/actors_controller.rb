class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
  end

# READ controller
  def show
    @actor = Actor.find(params["id"])
  end

# CREATE controller
  def new_form
  end

  def create_row
    a = Actor.new
    a.name       = params["the_name"]
    a.bio        = params["the_bio"]
    a.dob        = params["the_dob"]
    a.image_url  = params["the_image"]
    a.save

    redirect_to("http://localhost:3000/actors")
  end


# UPDATE controller
  def edit_form
    @actor = Actor.find(params["id"])
  end

  def update_row
    a = Actor.find(params["id"])
    a.name       = params["the_name"]
    a.bio        = params["the_bio"]
    a.dob        = params["the_dob"]
    a.image_url  = params["the_image"]
    a.save

    redirect_to("http://localhost:3000/actors")
  end


# DELETE controller

  def destroy
    @actor = Actor.find(params["id"])
    @actor.destroy

    redirect_to("http://localhost:3000/actors")
  end


end

