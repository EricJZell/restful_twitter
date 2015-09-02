require 'sinatra'
require 'pry'
require 'pg'
require 'rubygems'
require 'oauth'
require_relative 'twitter_config'
require 'json'

get '/' do
  redirect '/tweets'
end

get '/tweets' do
  if params[:user_search]
    username = params[:user_search]
  else
    username = "LaunchAcademy_"
  end
  tweets = get_tweets(username)
  user_info = get_user_info(username)
  erb :index, locals: { tweets: tweets, user_info: user_info }
end
