# week3_ex012.rb
# David Birtwell
=begin
  NOTE:
  0 = not taken quiz 1
  1 = taken quiz 1
=end

quiz = [0,0,0,1,0,0,1,1,0,1]

taken_quiz = quiz.inject{|sum, yes_no| sum+yes_no}
# puts taken_quiz
not_taken_quiz = quiz.length - taken_quiz
# puts not_taken_quiz

puts "The number of participants who did not attempt Quiz 1 is #{not_taken_quiz.to_s} out of #{quiz.length.to_s} total participants."