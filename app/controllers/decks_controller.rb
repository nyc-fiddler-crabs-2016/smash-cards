get '/decks/index' do
  @decks = Deck.all
  erb :'decks/index'
end

get '/decks/:id' do

  @deck = Deck.find_by(id: params[:id])
  session[:deck_id] = @deck.id
  erb :'decks/show'
end


