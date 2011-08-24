require 'haml'
require 'sass'
require 'sinatra/base'
require 'sinatra/reloader'
require 'json'

path = File.expand_path "../", __FILE__
APP_PATH = path

class Headshot < Sinatra::Base
  require "#{APP_PATH}/config/env"
  
  configure :development do # use thin start
    register Sinatra::Reloader
    also_reload ["controllers/*.rb", "models/*.rb"]
    set :public, "public"
    set :static, true
  end
  
  set :haml, { :format => :html5 }
  require 'rack-flash'
  enable :sessions
  use Rack::Flash
  require 'sinatra/content_for'
  helpers Sinatra::ContentFor
  set :method_override, true

  def not_found(object=nil)
    halt 404, "404 - Page Not Found"
  end
  
  sites = {
    yahoo_it: "http://yahoo.it"
  }
  HS = HShot.new sites

  get "/" do
    @img = HS.get :yahoo_it
    haml :index
  end

  post '/hshot' do
    content_type :json
    begin
    @img = HS.get params[:url]
    rescue SiteNotFound
      resp = { error: "site not found" }.to_json
    end
    
    resp = { url: @img  }.to_json unless resp
    resp
  end

  get '/css/main.css' do
    sass :main
  end
  
end