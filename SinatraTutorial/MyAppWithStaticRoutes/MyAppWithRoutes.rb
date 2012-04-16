require 'rubygems' if RUBY_VERSION < '1.9'

require 'sinatra'
require 'sinatra/base'
require 'sinatra/contrib'

class MyFirstClass < Sinatra::Base
	set :satic, true
	set :public_folder, File.dirname(__FILE__) + '/static'

	get '/named_via_params/:argument' do
    	'
		Using: /named_via_params/:argument<br/>
		!params[:argument] -> ' + params[:argument] + '(Try changing it)
	'
  	end

  	get '/named_via_block_parameter/:argument' do |argument|
    	"
		Using: '/named_via_block_parameter/:argument'<br/>
		argument -> #{argument}
	"
  	end

	get '/splat/*/bar/*' do
    	"
		Using: '/splat/*/bar/*'<br/>
		params[:splat] -> #{params[:splat].join(', ')}
	"
	end

	get '/splat_extension/*.*' do
	"
		Using: '/splat_extension/*.*'<br/>
		filename -> #{params[:splat][0]}<br/>
		extension -> #{params[:splat][1]}
	"
	end

	get %r{/regexp_params_captures/([\w]+)} do
    		"params[:captures].first -> '#{params[:captures].first}'"
  	end

	get %r{/regexp_captures_via_block_parameter/([\w]+)} do |c|
    		"c -> '#{c}'"
	end
end