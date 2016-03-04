get '/rounds/:id' do
  @round = Round.find_by(id: params[:id])
  erb :'rounds/show'
end

get '/rounds/:id/complete' do
  @round = Round.find_by(id: params[:id])
  erb :'rounds/complete'
end
