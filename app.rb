require 'sinatra'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(
           :adapter => "sqlite3",
           :database => "base.db",
           )

#ActiveRecord::Base.default_timezone= :local

class Tache < ActiveRecord::Base
end

get '/'  do
	@tache = Tache.all.order("created_at ASC")
	@title ="Tache"
	erb :index
end

 get "/edit" do
 	@title = "Nouvelle Tache"
 	@tache = Tache.new
	erb :edit
end

post '/' do
     @tache= Tache.new(params[:taches])
     @tache.save
     redirect '/'
end

put "/:id" do
	@tache = Tache.find(params[:id])
	@tache.update_attributes(params[:taches])
	redirect '/'
end

delete "/:id" do
	@tache = Tache.find(params[:id])
	@tache.destroy
	redirect '/'
end

get "/:id" do
	@tache = Tache.find(params[:id])
	@tache.save
	erb :edit
end

