class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
  end

# CREATE controller
  def new_form
  end

  def create_row
    m = Movie.new
    m.title       = params["the_title"]
    m.year        = params["the_year"]
    m.duration    = params["the_duration"]
    m.description = params["the_description"]
    m.image_url   = params["the_image"]
    m.save

    redirect_to("http://localhost:3000/movies")
  end

# READ controller
  def show
    @movie = Movie.find(params["id"])
  end

# DELETE controller

  def destroy
    @movie = Movie.find(params["id"])
    @movie.destroy

    redirect_to("http://localhost:3000/movies")
  end


# UPDATE controller
  def edit_form
    @movie = Movie.find(params["id"])
  end

  def update_row
    m = Movie.find(params["id"])
    m.title       = params["the_title"]
    m.year        = params["the_year"]
    m.duration    = params["the_duration"]
    m.description = params["the_description"]
    m.image_url   = params["the_image"]
    m.save

    redirect_to("http://localhost:3000/movies")
  end




end

