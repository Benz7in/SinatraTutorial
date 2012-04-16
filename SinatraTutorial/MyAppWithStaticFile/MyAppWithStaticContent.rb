require 'rubygems' if RUBY_VERSION < '1.9'

require 'sinatra'
require 'sinatra/base'
require 'sinatra/contrib'

class MyFirstClass < Sinatra::Base
	set :satic, true
	set :public_folder, File.dirname(__FILE__) + '/static'
end