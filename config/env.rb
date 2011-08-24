require 'bundler'
require 'bundler/setup'

env = ENV["RACK_ENV"] || "development"

# require 'dm-core'
# require 'dm-sqlite-adapter'
# require 'dm-mysql-adapter'
# require 'dm-migrations'
# require 'dm-validations'
# 
# user = "" 
# 
# if env == "production"
#   pass = File.read(File.expand_path "~/.password").strip
#   user = "root:#{pass}@" 
# end
# 
# DataMapper.setup :default, "mysql://#{user}localhost/handsonxp_#{env}"
# DataMapper.setup :default, "sqlite://#{APP_PATH}/db/app.sqlite"
# 
# 
# Dir.glob("#{APP_PATH}/models/*").each do |model|
#   require model
# end


# require 'extlib'

require 'voidtools'
include Voidtools::Sinatra::ViewHelpers