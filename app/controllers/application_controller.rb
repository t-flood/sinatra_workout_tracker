class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
      set :session_secret, "auth"
  end

  get '/' do
    session[:greeting] = "Hello World"
    response.set_cookie 'credit_amount', '100'
    "Hello World!"
  end

  get '/remember' do
    "You have #{request.cookies['credit_amount']} cookies."
  end

end
