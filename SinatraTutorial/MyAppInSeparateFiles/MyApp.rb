require 'rubygems' if RUBY_VERSION < '1.9'
require 'sinatra/base'

class MyFirstClass < Sinatra::Base
  get '/' do
    'Fuck Yeaah! I have created my first app in a separate file!'
  end
end