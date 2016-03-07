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


  # @deck1 = Deck.create(name: "animals")
  # @deck1.cards.create(word: "honeybees", definition: "What insect provides food for humans?")
  # @deck1.cards.create(word: "mockingbird", definition: " This kind of grayish-white songbird is noted for its ability to mimic the sound of other birds, hence its name. What bird is this?")
  # @deck1.cards.create(word: "python", definition: "What kind of snake can grow up to 20 feet in length and kill its prey by coiling around and suffocating? ")
  # @deck1.cards.create(word: "penguin", definition: "What is the only bird that can swim, but not fly?")
  # @deck1.cards.create(word: "joey", definition: " A joey is the baby of what animal?",)



# @deck1 = Deck.create(name: "computers", id: 2)
#   @deck1.cards.create(word: "word", definition: "heres the defimition to word")
#   @deck1.cards.create(word: "word", definition: "heres the defimition to word")
#   @deck1.cards.create(word: "word", definition: "heres the defimition to word")
#   @deck1.cards.create(word: "word", definition: "heres the defimition to word")
#   @deck1.cards.create(word: "word", definition: "heres the defimition to word")
