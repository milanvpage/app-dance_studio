require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'nhybtbrtfvrbynimi7646'
  end

  get "/" do
    erb :welcome
  end

  helpers do
    def current_user
      @current_user ||= Dancer.find_by(id: session[:dancer_id])
    end

    def logged_in?
      #binding.pry
      !!current_user
    end

  end

  private
  def redirect_if_not_logged_in
    if !logged_in?
      redirect to "/login"
    end
  end

end
