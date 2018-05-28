class TweetsController < ApplicationController 

  get '/tweets' do 
    if !logged_in? 
      redirect to '/login' 
    else 
      @user = User.find(session[:user_id])
      erb :'/tweets/tweets'
    end 
  end 

  get '/tweets/new' do 
    if logged_in? 
      erb :'tweets/create_tweet' 
    else 
      redirect to '/login' 
    end 
  end 