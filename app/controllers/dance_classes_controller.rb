class DanceClassesController < ApplicationController

  get "/dance_classes" do

    @dance_classes = DanceClass.all 
    erb :"/dance_classes/index.html"
    
  end

  get "/dance_classes/new" do
    redirect_if_not_logged_in
    @styles = Style.all
    @studios = Studio.all

    erb :"/dance_classes/new.html"
  end

  get "/dance_classes/:id" do
    redirect_if_not_logged_in

    @dance_class = DanceClass.find_by_id(params[:id])
    erb :"/dance_classes/show.html"
  end

  get "/dance_classes/:id/edit" do
    redirect_if_not_logged_in

    @dance_class = DanceClass.find_by_id(params[:id])

    redirect_if_not_authorized
    
    erb :"/dance_classes/edit.html"
  end

  post "/dance_classes" do
    redirect_if_not_logged_in

   @dance_class = DanceClass.new(params)
   #@dance_class = DanceClass.all
   #@dance_class = current_user.dance_classes.build(params)
   #@dance_class.dancer = current_user
   #@dance_class.dancer_id = current_user.id
   @dance_class.dancer_id = session[:dancer_id]
   @dance_class.save
   #binding.pry
    redirect "/dance_classes"
  end

  patch "/dance_classes/:id" do
    redirect_if_not_logged_in

    @dance_class = DanceClass.find(params[:id])

    redirect_if_not_authorized

    @dance_class.update(params["dance_class"])
    redirect "/dance_classes/#{@dance_class.id}"
  end

  delete "/dance_classes/:id/delete" do
    redirect_if_not_logged_in
    
    @dance_class = DanceClass.find_by_id(params[:id])

    redirect_if_not_authorized

    @dance_class.destroy
    redirect "/dance_classes"
  end

  private
  def redirect_if_not_authorized
    if @dance_class.dancer != current_user
      redirect to "/dance_classes"
    end
  end
end
