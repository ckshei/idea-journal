class UserController < ApplicationController

get '/signup' do
    erb :'/users/signup'
  end

  post '/signup' do
    if User.find_by(username: params[:username])
      redirect to '/signup'
    elsif User.find_by(email: params[:email])
      redirect to '/signup'
    else 
      user = User.create(params)
      session[:id] = user.id
      redirect to '/main'
    end
  end

  get '/main' do
    current_user
    erb :'users/main_page'
  end

  post '/main' do
    idea = Idea.create(params)
    current_user
    redirect to "/main"
  end

  post '/login' do
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:id] = user.id
      redirect to '/main'
    else
      redirect to '/'
    end
  end

  post '/logout' do
    session.clear
    redirect to '/'
  end
end