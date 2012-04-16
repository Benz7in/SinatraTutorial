require 'rubygems' if RUBY_VERSION < '1.9'

require 'sinatra'
require 'sinatra/base'
require 'sinatra/contrib'

class MyFirstClass < Sinatra::Base
	register Sinatra::Reloader	
	
	get '/' do
		'Fuck Yeaah! I have created my first app in a separate file with Reloader!' + 
		' And it really works! sadfljk;sadfl;saj'
	end
end