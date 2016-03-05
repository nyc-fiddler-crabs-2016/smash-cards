get '/rounds' do
  @round = Round.create(user_id: session[:user_id], deck_id: session[:deck_id] )
  redirect "/rounds/#{@round.id}"
end


get '/rounds/:id' do
  @round = Round.find_by(id: params[:id])
  @deck = Deck.find_by(id: session[:deck_id])
  @deck.shuffle_deck
  @card = @round.pick_card

  erb :'rounds/show'
end

post '/rounds/:id' do
  @round = Round.find_by(id: params[:id])
  @deck = Deck.find_by(id: session[:deck_id])
  @card = @round.pick_card
  @guess = Guess.create_with(user_input: params[:word]).find_or_create_by(card_id: @card.id, round_id: params[:id])
  @guess.user_input = params[:word]
      if @guess.correct?  && @guess.first_try == false
        @guess.update(guessed_correctly: true)
        @round.first_guess_correct
        @round.make_guess
        @round.save
        @card = @round.pick_card
        @message = "Nice!"
        if @round.game_over?
          redirect "/rounds/#{@round.id}/complete"
        else
          erb :'/rounds/show'
        end
      elsif @guess.correct?
        @guess.update(guessed_correctly: true)
        @round.make_guess
        @round.save
        @card = @round.pick_card
        @message = "You got it!"
        if @round.game_over?
          redirect "/rounds/#{@round.id}/complete"
        else
          erb :'/rounds/show'
        end
       else
        @round.make_guess
        @round.save
        @guess.first_try = true
        @guess.save
        @errors = @guess.errors.full_messages
        @message = "Good Try!"
        @card = @round.pick_card
        erb :'/rounds/show'
  end
end


get '/rounds/:id/complete' do
  @round = Round.find_by(id: params[:id])
  erb :'/rounds/complete'
end
