class TeeTimesController < ApplicationController
  def index
    @tee_times = TeeTime.page(params[:page]).per(10)

    render("tee_times/index.html.erb")
  end

  def show
    @tee_time = TeeTime.find(params[:id])

    render("tee_times/show.html.erb")
  end

  def new
    @tee_time = TeeTime.new

    render("tee_times/new.html.erb")
  end

  def create
    @tee_time = TeeTime.new

    @tee_time.time = params[:time]
    @tee_time.player_id = params[:player_id]
    @tee_time.match_id = params[:match_id]
    @tee_time.team_id = params[:team_id]

    save_status = @tee_time.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tee_times/new", "/create_tee_time"
        redirect_to("/tee_times")
      else
        redirect_back(:fallback_location => "/", :notice => "Tee time created successfully.")
      end
    else
      render("tee_times/new.html.erb")
    end
  end

  def edit
    @tee_time = TeeTime.find(params[:id])

    render("tee_times/edit.html.erb")
  end

  def update
    @tee_time = TeeTime.find(params[:id])

    @tee_time.time = params[:time]
    @tee_time.player_id = params[:player_id]
    @tee_time.match_id = params[:match_id]
    @tee_time.team_id = params[:team_id]

    save_status = @tee_time.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tee_times/#{@tee_time.id}/edit", "/update_tee_time"
        redirect_to("/tee_times/#{@tee_time.id}", :notice => "Tee time updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Tee time updated successfully.")
      end
    else
      render("tee_times/edit.html.erb")
    end
  end

  def destroy
    @tee_time = TeeTime.find(params[:id])

    @tee_time.destroy

    if URI(request.referer).path == "/tee_times/#{@tee_time.id}"
      redirect_to("/", :notice => "Tee time deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Tee time deleted.")
    end
  end
end
