# Config ---------------

require 'bundler'
Bundler.require()

# Connection -----------

ActiveRecord::Base.establish_connection({
	:adapter => 'postgresql'
	:database => 'allinfo'
	})



# Models ---------------

require './models/info'




# Routes ---------------



# READ ALL: index ======

get '/infos' do 
	
end



# FORM for CREATING: new =======

get '/infos/new' do
end

# CREATE NEW INFO: create =======

post '/infos' do
	
end



# READ INDIVIDUAL: show =======

get '/infos/:id' do
end



# FORM for UPDATING: edit =======

get '/infos/:id/edit' do
end

# UPDATE INFO: update =======

put '/infos/:id' do
end



# DESTROY INFO: destroy =======
delete '/infos/:id' do
end

