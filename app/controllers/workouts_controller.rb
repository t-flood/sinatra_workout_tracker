class WorkoutsController < ApplicationController

  get '/workouts' do
    "You are logged in as #{session[:email]}"
  end
end
