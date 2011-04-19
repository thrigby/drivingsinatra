require 'sinatra'
require 'erb'

get '/' do
  erb :index
end

get '/the_resulting_action_from_clicking_submit' do
  @instance_variable1 = params["this_is_what_gets_fed_into_params1"]
  @instance_variable2 = params["this_is_what_gets_fed_into_params2"]
  @instance_variable3 = params["this_is_what_gets_fed_into_params3"].to_i
  grab_name_one
  grab_name_two
  grab_name_three
  erb :result
end

def grab_name_one
  name_one_length = @instance_variable1.length
  if name_one_length > 10
    x = rand(10)
  else
    x = rand(name_one_length)
  end
  y = ["tiny", "tony", "bruno", "sam", "gentle", "pizza-face", "franky", "smiley", "the don", "toothpick"]
  @z = y[x]  
end

def grab_name_two
  name_one_length = @instance_variable2.length
  if name_one_length > 10
    x = rand(10)
  else
    x = rand(name_one_length)
  end
  y = ["'toes'", "'the bagel'", "'tickles'", "'the telephono polo'", "'the twitcher'", "'crap foot'", "'big lips'", "'the plumber'", "'the master'", "'joe joe'"]
  @zz = y[x]  
end

def grab_name_three
  if @instance_variable3 > 10
    x = rand(10)
  else
    x = rand(@instance_variable3)
  end
  y = ["gravano", "corozzo", "anastasio", "manfredi", "gambini", "gambino", "blondo", "zampeli", "the don", "pistachio"]
  @zzz = y[x]  
end