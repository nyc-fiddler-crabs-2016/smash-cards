get '/rounds' do
  @round = Round.create(user_id: session[:user_id], deck_id: session[:deck_id] )
  redirect "/rounds/#{@round.id}"
end


get '/rounds/:id' do
  @round = Round.find_by(id: params[:id])
  erb :'rounds/show'
end

get '/rounds/:id/complete' do
  @round = Round.find_by(id: params[:id])
  erb :'rounds/complete'
end
