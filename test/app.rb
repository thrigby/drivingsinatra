require 'sinatra'
require 'erb'

get '/' do
  erb :index
end

get '/the_resulting_action_from_clicking_submit' do
  @instance_variable1 = params["this_is_what_gets_fed_into_params1"]
  @instance_variable2 = params["this_is_what_gets_fed_into_params2"]
  @instance_variable3 = params["this_is_what_gets_fed_into_params3"]
  erb :result
end

