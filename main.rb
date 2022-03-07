require './player'
require './questions'
require './game'


game = Game.new()
puts game.get_john
# game.game_loop;

# while loop do
#   question1 = Questions.new()
#   puts question1.generate_question
#   result = question1.check_answer(question1.answer)
#   puts result
# end