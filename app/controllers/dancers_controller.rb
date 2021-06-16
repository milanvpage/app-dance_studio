class DancersController < ApplicationController

  # GET: /signup
  get "/signup" do
    erb :"/dancers/signup.html"
  end

  # GET: /dancers/new
  get "/login" do
    erb :"/dancers/login.html"
  end

  post "/login" do
    @dancer = Dancer.find_by(:email => params[:email])
    if @dancer != nil && @dancer.password == params[:password]

      session[:dancer_id] = @dancer.id
      redirect to "dance_classes"
    end
    erb :"dancers/signup.html"
  end


  # POST: /signup
  post "/signup" do
    d = Dancer.new(params)
    
    #if params.all?{key, value= value.blank?} || Dancer.find_by(email: params[:email])
    #if d.email.blank? || d.password.blank? || Dancer.find_by_email(params["email"])
    if !d.save
      redirect "/signup"
    else
      d.save
      session[:dancer_id] = d.id
      #binding.pry
      redirect "/dance_classes"

    end

    # 1.instantiate a user
    # 2.make sure user signsup with valid data
    # 3.if they sign up successfully we want to redirect them somewhere
    # 4.if DON'T signup successfully redirect back to the signup form
  end

    post "/logout" do
      session.clear
      redirect to "/dance_classes"
    end

  # GET: /dancers/5
  #get "/dancers/:id" do
   # erb :"/dancers/show.html"
  #end

  # GET: /dancers/5/edit
  #get "/dancers/:id/edit" do
   # erb :"/dancers/edit.html"
  #end

  # PATCH: /dancers/5
  #patch "/dancers/:id" do
   # redirect "/dancers/:id"
  #end

  # DELETE: /dancers/5/delete
  #delete "/dancers/:id/delete" do
   # redirect "/dancers"
  #end
end
