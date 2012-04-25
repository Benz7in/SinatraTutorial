# If you are estonian monkey, read http://carlosgabaldon.com/articles/bets-placed-by-sinatra/ first!

require 'rubygems' if RUBY_VERSION < '1.9'

require 'sinatra'
require 'sinatra/base'
require 'sinatra/contrib'
require 'sequel'
require 'erb'

# connect to sqlite DB
DB = Sequel.sqlite('./db.sqlite')

# include all the models
Dir["./models/*.rb"].each {|file| require file }

class MyFirstClass < Sinatra::Base
	register Sinatra::Reloader

	get '/' do
    @products = Product.all
    erb :index
  end

  get '/new-monkey-product' do
    @products = Product.new_monkey_product
    redirect '/'
  end

  get '/delete-monkey-products' do
    @products = Product.delete_monkey_products
    redirect '/'
  end
end