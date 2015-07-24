require './config/environment'
require './app/models/models'
require 'pry'

class ApplicationController < Sinatra::Base
  enable :sessions
  
  get "/" do
    "Hello World"
  end
  
end