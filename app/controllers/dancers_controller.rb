class DancersController < ApplicationController

  # GET: /dancers
  get "/signup" do
    erb :"/dancers/signup.html"
  end

  # GET: /dancers/new
  get "/dancers/new" do
    erb :"/dancers/new.html"
  end

  # POST: /dancers
  post "/dancers" do
    redirect "/dancers"
  end

  # GET: /dancers/5
  get "/dancers/:id" do
    erb :"/dancers/show.html"
  end

  # GET: /dancers/5/edit
  get "/dancers/:id/edit" do
    erb :"/dancers/edit.html"
  end

  # PATCH: /dancers/5
  patch "/dancers/:id" do
    redirect "/dancers/:id"
  end

  # DELETE: /dancers/5/delete
  delete "/dancers/:id/delete" do
    redirect "/dancers"
  end
end
