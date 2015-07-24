require "require_all" 
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'
require 'pry'

require_relative "../../config/environment"
require_all "app/models/*.rb"
require_all "app/controllers/*.rb"

class ApplicationController < Sinatra::Base

  enable :sessions
    
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :signup
  end
  
  get '/learn-more' do
    redirect to "https://en.wikipedia.org/wiki/Kickstarter"
  end
	
	get '/home' do
		erb :"project/index"
  end

  post "/signup" do
      @username = params[:user][:username]
		if User.exists?(:username => @username)
            redirect "/signup"
			#:notice, :error, or :alert
        else
            @user = User.new({:username => params[:username], :full_name => params[:full_name]})
			redirect ""
		end
    
    erb :"user/view"
  end
	
	
	post "/do" do
		@do=params[:do]
		if @do==project
			erb :somewhere
		elsif @do==browse
			erb :browse
		end
	end
  
end
