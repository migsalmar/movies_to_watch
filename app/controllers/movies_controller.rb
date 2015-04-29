class MoviesController < ApplicationController

  def index
    @movies = Movie.order("created_at DESC")
  end

    def show
      # @movie=Movie.find_by({:id =>4})
      @movie=Movie.find(params[:id])
    end

    def update row
      m=Movie.find(params[:id])
      m.title=params[:the_title]
      m.duration=params[:the_duration]
      m.description=params[:the_description]
      m.image_url=params[:the_image_url]
      m.save

      redirect_to("/movies/#{m.id}")
    end

    def new_form
    end

    def create_row
      m=Movie.new
      m.title = params[:the_title]
      m.year = params[:the_year]
      m.duration = params[:the_duration]
      m.description= params[:the_description]
      m.image_url= params[:the_image_url]
      m.save

      redirect_to("/movies")
    end



    def edit_form
        @movie=Movie.find(params[:id])
    end

    def destroy
    m = Movie.find(params[:id])
    m.destroy

    redirect_to("/movies")
  end


#   def new_form
#   end

#   def create_row
#       p=Movie.new
#       p.caption=params[:the_caption]
#       p.source=params[:the_source]
#       p.id=params[:the_id]
#       p.save
#       redirect_to("http://localhost:3000/movies/#{p.id}")
#   end

#   def edit_form
#     p=Movie.find(params["id"])
#     @caption=p.caption
#     @source=p.source
#     @id=p.id
#   end

#   def update_row
#     p = Movie.find(params[:id])
#     p.caption=params[:the_caption]
#     p.source=params[:the_source]
#     p.save
#     redirect_to("http://localhost:3000/movies")
#   end

#   def destroy
#     ovie = Movie.find(params["id"])
#     photo.destroy
#     redirect_to("http://localhost:3000/movies")
#   end

end
