class WorkoutsController < ApplicationController

  get '/workouts' do
    redirect_if_not_logged_in
    @workouts = Workout.all
    erb :'workouts/index'
  end

  get '/workouts/new' do
    redirect_if_not_logged_in
    erb :'workouts/new'
  end

  get '/workouts/:id/edit' do
    redirect_if_not_logged_in
    @workout = Workout.find(params[:id])
    erb :'workouts/edit'
  end

  post '/workouts' do
    redirect_if_not_logged_in
    @workout = Workout.create(params)
    redirect "/workouts/:id/edit"
  end


  get '/logout' do
    session.clear
  end
end
