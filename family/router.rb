require 'sinatra'
require 'sinatra/activerecord'
require './models'

set :database, "sqlite3:family.sqlite3"

get '/' do
  erb :family_new
end

get '/family/new' do
  erb :family_new
end


post '/family/create' do
  @family = Family.create(name: params["family_name"])
  erb :family_show
end

get '/family/:id' do
  @family = Family.find(params["id"])
  erb :family_show
end

get '/member/new' do
  erb :member_new
end

post '/member/create' do
  @member = Member.create(params["member"])
  erb :member_show
end

get '/member/:id' do
  @member = Member.find(params["id"])
  erb :member_show
end

post '/:family_id/member/create' do
  member_params = params["member"]
  member_params["family_id"] = params["family_id"]
  @member = Member.create(member_params)

  redirect "/family/#{params["family_id"]}"
end
