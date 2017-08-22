class CoursesController < ApplicationController
  def index
    @q = Course.ransack(params[:q])
    @courses = @q.result(:distinct => true).includes(:matches, :holes).page(params[:page]).per(10)
    @location_hash = Gmaps4rails.build_markers(@courses.where.not(:address_latitude => nil)) do |course, marker|
      marker.lat course.address_latitude
      marker.lng course.address_longitude
      marker.infowindow "<h5><a href='/courses/#{course.id}'>#{course.image_url}</a></h5><small>#{course.address_formatted_address}</small>"
    end

    render("courses/index.html.erb")
  end

  def show
    @hole = Hole.new
    @match = Match.new
    @course = Course.find(params[:id])

    render("courses/show.html.erb")
  end

  def new
    @course = Course.new

    render("courses/new.html.erb")
  end

  def create
    @course = Course.new

    @course.image_url = params[:image_url]
    @course.name = params[:name]
    @course.address = params[:address]
    @course.par = params[:par]
    @course.rating = params[:rating]
    @course.slope = params[:slope]
    @course.yardage = params[:yardage]

    save_status = @course.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/courses/new", "/create_course"
        redirect_to("/courses")
      else
        redirect_back(:fallback_location => "/", :notice => "Course created successfully.")
      end
    else
      render("courses/new.html.erb")
    end
  end

  def edit
    @course = Course.find(params[:id])

    render("courses/edit.html.erb")
  end

  def update
    @course = Course.find(params[:id])

    @course.image_url = params[:image_url]
    @course.name = params[:name]
    @course.address = params[:address]
    @course.par = params[:par]
    @course.rating = params[:rating]
    @course.slope = params[:slope]
    @course.yardage = params[:yardage]

    save_status = @course.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/courses/#{@course.id}/edit", "/update_course"
        redirect_to("/courses/#{@course.id}", :notice => "Course updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Course updated successfully.")
      end
    else
      render("courses/edit.html.erb")
    end
  end

  def destroy
    @course = Course.find(params[:id])

    @course.destroy

    if URI(request.referer).path == "/courses/#{@course.id}"
      redirect_to("/", :notice => "Course deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Course deleted.")
    end
  end
end
