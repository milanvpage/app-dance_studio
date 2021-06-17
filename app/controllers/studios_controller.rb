class StudiosController < ApplicationController

  get "/studios" do

    @studios = Studio.all 
    erb :"/studios/index.html"
    
  end

  get "/studios/new" do
    redirect_if_not_logged_in
    @styles = Style.all
    @dance_classes = DanceClass.all

    erb :"/studios/new.html"
  end

  get "/studios/:id" do
    redirect_if_not_logged_in

    @studio = Studio.find_by_id(params[:id])
    erb :"/studios/show.html"
  end

  get "/studios/:id/edit" do
    redirect_if_not_logged_in

    @styles = Style.all
    @dance_classes = DanceClass.all

    @studios = Studio.find_by_id(params[:id])

    redirect_if_not_authorized
    
    erb :"/studios/edit.html"
  end

  post "/studios" do
    redirect_if_not_logged_in

   @studio = Studio.new(params)
   #@studio = Studio.all
   #@studio = current_user.studios.build(params)
   #@studio.dancer = current_user
   #@studio.dancer_id = current_user.id
   @studio.dancer_id = session[:dancer_id]
   @studio.save
   #binding.pry
    redirect "/studios"
  end

  patch "/studios/:id" do
    redirect_if_not_logged_in
    
    @studio = Studio.find(params[:id])

    redirect_if_not_authorized

    @studio.update(params["studio"])
    redirect "/studios/#{@studio.id}"
  end

  delete "/studios/:id/delete" do
    redirect_if_not_logged_in
    
    @studio = Studio.find_by_id(params[:id])

    redirect_if_not_authorized

    @studio.destroy
    redirect "/studios"
  end

  private
  def redirect_if_not_authorized
    if @dance_class.dancer != current_user
      redirect to "/dance_classes"
    end
  end


end
