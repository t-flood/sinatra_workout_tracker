class WorkoutsController < ApplicationController

  get '/workouts' do
    "You are logged in as #{session[:email]}. Here is a list of the latest workouts" #list of workouts
  end

  get '/workouts/new' do #checks if they are logged in
    if !logged_in?
      redirect "/login" #redirect if they are not
    else
      "A new workout form" #render if they are
    end
  end

  get '/workouts/:id/edit' do
    if !logged_in?
      redirect "/login"
    else
      "An edit workout form"
    end
  end

  get '/logout' do
    session.clear
  end
end
