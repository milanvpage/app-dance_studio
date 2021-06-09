class DanceClassesController < ApplicationController

  # GET: /dance_classes
  get "/dance_classes" do

    @dance_classes = DanceClass.all 
    erb :"/dance_classes/index.html"
    
  end

  # GET: /dance_classes/new
  get "/dance_classes/new" do

    erb :"/dance_classes/new.html"
  end

  # POST: /dance_classes
  post "/dance_classes" do
   dance_class = DanceClass.new(style: params[:style], level: params[:level])
   movie = DanceClass.all
   dance_class.save
    redirect "/dance_classes"
  end

  # GET: /dance_classes/5
  get "/dance_classes/:id" do
    @dance_class = DanceClass.find_by_id(params[:id])
    erb :"/dance_classes/show.html"
  end

  # GET: /dance_classes/5/edit
  get "/dance_classes/:id/edit" do
    @dance_class = DanceClass.find_by_id(params[:id])
    erb :"/dance_classes/edit.html"
  end

  # PATCH: /dance_classes/5
  patch "/dance_classes/:id" do
    @dance_class = DanceClass.find_by_id(params[:id])
    binding.pry
    #redirect "/dance_classes/:id"
  end

  # DELETE: /dance_classes/5/delete
  delete "/dance_classes/:id/delete" do
    @dance_class = DanceClass.find_by_id(params[:id])
    @dance_class.destroy
    redirect "/dance_classes"
  end
end
