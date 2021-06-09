class DanceClassesController < ApplicationController

  # GET: /dance_classes
  get "/dance_classes" do
    erb :"/dance_classes/index.html"
  end

  # GET: /dance_classes/new
  get "/dance_classes/new" do
    erb :"/dance_classes/new.html"
  end

  # POST: /dance_classes
  post "/dance_classes" do
    redirect "/dance_classes"
  end

  # GET: /dance_classes/5
  get "/dance_classes/:id" do
    erb :"/dance_classes/show.html"
  end

  # GET: /dance_classes/5/edit
  get "/dance_classes/:id/edit" do
    erb :"/dance_classes/edit.html"
  end

  # PATCH: /dance_classes/5
  patch "/dance_classes/:id" do
    redirect "/dance_classes/:id"
  end

  # DELETE: /dance_classes/5/delete
  delete "/dance_classes/:id/delete" do
    redirect "/dance_classes"
  end
end
