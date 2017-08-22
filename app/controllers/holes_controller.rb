class HolesController < ApplicationController
  def index
    @q = Hole.ransack(params[:q])
    @holes = @q.result(:distinct => true).includes(:course, :scores).page(params[:page]).per(10)

    render("holes/index.html.erb")
  end

  def show
    @score = Score.new
    @hole = Hole.find(params[:id])

    render("holes/show.html.erb")
  end

  def new
    @hole = Hole.new

    render("holes/new.html.erb")
  end

  def create
    @hole = Hole.new

    @hole.course_id = params[:course_id]
    @hole.hole_number = params[:hole_number]
    @hole.par = params[:par]
    @hole.yardage = params[:yardage]
    @hole.handicap = params[:handicap]

    save_status = @hole.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/holes/new", "/create_hole"
        redirect_to("/holes")
      else
        redirect_back(:fallback_location => "/", :notice => "Hole created successfully.")
      end
    else
      render("holes/new.html.erb")
    end
  end

  def edit
    @hole = Hole.find(params[:id])

    render("holes/edit.html.erb")
  end

  def update
    @hole = Hole.find(params[:id])

    @hole.course_id = params[:course_id]
    @hole.hole_number = params[:hole_number]
    @hole.par = params[:par]
    @hole.yardage = params[:yardage]
    @hole.handicap = params[:handicap]

    save_status = @hole.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/holes/#{@hole.id}/edit", "/update_hole"
        redirect_to("/holes/#{@hole.id}", :notice => "Hole updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Hole updated successfully.")
      end
    else
      render("holes/edit.html.erb")
    end
  end

  def destroy
    @hole = Hole.find(params[:id])

    @hole.destroy

    if URI(request.referer).path == "/holes/#{@hole.id}"
      redirect_to("/", :notice => "Hole deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Hole deleted.")
    end
  end
end
