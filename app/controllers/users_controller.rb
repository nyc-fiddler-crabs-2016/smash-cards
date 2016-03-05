
get '/users/new' do
  erb :'users/new'
end


post '/users' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id

    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/users/login' do
  erb :'users/login'
end


post '/users/login' do
  @user = User.find_by(username: params[:username])
  if @user && @user.password == params[:password]
    session[:user_id] = @user.id
    redirect "/decks/index"
  else
    @error = "Either the Username or Password is incorrect"
    erb :'/users/login'
  end
end

get '/users/logout' do
  session.clear
  redirect "/decks/index"
end



get '/users/:id' do
  erb :'users/show'
end


