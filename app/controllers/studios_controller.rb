class StudiosController < ApplicationController

  get "/studios" do

    @studios = Studio.all 
    erb :"/studios/index.html"
    
  end

  get "/studios/:id" do
    @studio = Studio.find_by_id(params[:id])
    erb :"/studios/show.html"
  end
end
