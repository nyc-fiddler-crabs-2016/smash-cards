new_deck = Deck.create(name: 'Flashcard Sample')

terms = []
defs = []

file = File.open('./db/flashcard_sample.txt')

lines = File.readlines(file).each_with_index do |line, index|
  if index.odd?
    terms << line.chomp
  else
    defs << line.chomp
  end
end


card_hash = Hash[terms.zip defs]

card_hash.each do |term, definition|
	new_deck.cards << Card.create(word: term, definition: definition)
end
