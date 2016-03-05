# new_deck = Deck.create(name: 'Flashcard Sample')

# terms = []
# defs = []

# file = File.open('./db/flashcard_sample.txt')

# lines = File.readlines(file).each_with_index do |line, index|
#   if index.odd?
#     terms << line.chomp
#   else
#     defs << line.chomp
#   end
# end


# card_hash = Hash[terms.zip defs]

# card_hash.each do |term, definition|
# 	new_deck.cards << Card.create(word: term, definition: definition)
# end


# deck = Deck.create(name: 'elephants')
# word = Card.create(word: 'card', definition: 'answer: card')
# word_2 = Card.create(word: 'wow', definition: 'answer: wow')

# deck.cards.push(word, word_2)


#   Deck.create(name: Faker::Hacker.noun)

# Deck.all.each do |deck|

#     deck.cards << Card.find_or_create_by(word: Faker::Hacker.noun , definition: Faker::Hacker.say_something_smart)

# end
