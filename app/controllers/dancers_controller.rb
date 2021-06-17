class DancersController < ApplicationController

  get "/signup" do
    erb :"/dancers/signup.html"
  end

  post "/signup" do
    d = Dancer.new(params)
    
    #if params.all?{key, value= value.blank?} || Dancer.find_by(email: params[:email])
    #if d.email.empty? || d.password.empty? || Dancer.find_by_email(params["email"])
#binding.pry 
    if d.save
      session[:dancer_id] = d.id
      redirect to "/dance_classes"
    else
      redirect to "/signup"

      #d.save
      #session[:dancer_id] = d.id
      #redirect "/dance_classes"

    end

    # 1.instantiate a user
    # 2.make sure user signedup with valid data
    # 3.if they sign up successfully we want to redirect/log them in them somewhere
    # 4.if DON'T signup successfully redirect back to the signup form/somewhere like an error page
  end

  get "/login" do
    #this is for the form for logging in
    erb :"/dancers/login.html"
  end

  post "/login" do
    #binding.pry
    #login check
    #existing account in our DB
    #password matches password of account
    #redirect to classes
    #add user_id to the session
    #if false error / redirect to login
    dancer = Dancer.find_by_email(params[:email])
    if dancer && dancer.authenticate(params[:password])
      session[:dancer_id] = dancer.id
      redirect to "/dance_classes"
    else
      redirect to "/login"    
    end 
  end

   post "/logout" do
    session.clear
    #session.delete(:dancer_id)
    redirect to "/dance_classes"
  end

end
