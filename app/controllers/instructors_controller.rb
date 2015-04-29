class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new
    @instructor.first_name = params[:first_name]
    @instructor.last_name = params[:last_name]
    @instructor.bio = params[:bio]
    @instructor.paid = params[:paid]

    if @instructor.save
      redirect_to instructors_url, :notice => "Instructor created successfully."
    else
      render 'new'
    end
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:id])

    @instructor.first_name = params[:first_name]
    @instructor.last_name = params[:last_name]
    @instructor.bio = params[:bio]
    @instructor.paid = params[:paid]

    if @instructor.save
      redirect_to instructor_url(@instructor.id), :notice => "Instructor updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @instructor = Instructor.find(params[:id])

    @instructor.destroy

    redirect_to instructors_url, :notice => "Instructor deleted."
  end
end
