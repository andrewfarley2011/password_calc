
require "sinatra"
require_relative "math.rb"

get '/' do 
	erb :index
end 

post '/index' do	
	first = params[:first_name]
	last = params[:last_name]
	pass = params[:password]
	array_of_passwords = ["102892", "031595", "195466"]
    
    if pass.include?(array_of_passwords[0]) || pass.include?(array_of_passwords[1]) || pass.include?(array_of_passwords[2])
    	redirect '/radio_buttons?password=' + pass + '&first_name=' + first + '&last_name=' + last
    else
        redirect '/wrong_password?'
    end
end

get '/radio_buttons' do 
	first = params[:first_name]
	last = params[:last_name]
  	pass = params[:password]
  	erb :radio_buttons, :locals => {first:first, last:last, pass:pass}
end 

post '/radio_buttons' do
	first = params[:first_name]
	last = params[:last_name]
  	pass = params[:password]
	radio = params[:radio]
	redirect '/two_numbers?password=' + pass + '&first_name=' + first + '&last_name=' + last + '&radio=' + radio
end

get '/wrong_password' do 
	first = params[:first_name]
	last = params[:last_name]
  	pass = params[:password]
  	erb :wrong_password, :locals => {first:first, last:last, pass:pass}
end 

post '/wrong_password' do
	first = params[:first_name]
	last = params[:last_name]
  	pass = params[:password]
  	array_of_passwords = ["102892", "031595", "195466"]
    
    if pass.include?(array_of_passwords[0]) || pass.include?(array_of_passwords[1]) || pass.include?(array_of_passwords[2])
    	redirect '/radio_buttons?password=' + pass + '&first_name=' + first + '&last_name=' + last
    else
        redirect '/wrong_password?'
    end
end

get '/two_numbers' do
	first = params[:first_name]
	last = params[:last_name]
  	pass = params[:password]
	radio = params[:radio]
	erb :two_numbers, :locals => {first:first, last:last, pass:pass, radio:radio}
end

 post '/two_numbers' do 
 	first = params[:first_name]
	last = params[:last_name]
  	pass = params[:password]
	num_1 = params[:num_1]
	num_2 = params[:num_2]
	radio = params[:radio]
	totalnumbers = calc(radio, num_1.to_i, num_2.to_i)
redirect '/total?password=' + pass + '&first_name=' + first + '&last_name=' + last + '&radio=' + radio + '&num_1=' + num_1 + '&num_2=' + num_2 + '&totalnumbers=' + totalnumbers
end 

get '/total' do 
	first = params[:first_name]
	last = params[:last_name]
  	pass = params[:password]
	num_1 = params[:num_1]
	num_2 = params[:num_2]
	radio = params[:radio]
	totalnumbers = params[:totalnumbers]
	erb :total, :locals => {first:first, last:last, pass:pass, radio:radio, num_1:num_1, num_2:num_2, totalnumbers:totalnumbers}
end 

