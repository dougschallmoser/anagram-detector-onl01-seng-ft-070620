require 'pry'

# 1. Build an Anagram class:
#    -Takes in a word upon initialization
# 2. Create a setter/getter method for the word that the class
#    instances are initialized with.
# 2. Create a #match method that takes an array of possible anagrams.
#     It should return:
#       -All matches as an array
#           -Sort each letter in @word in alphabetical order.
#           -Sort each letter in the words array in alphabetial order. 
#           -Compare each letter in @word to each letter of every
#            word in the words array
#       -If no matches exist, returns an empty array


class Anagram

    attr_accessor :word

    def initialize(word)
        @word = word
    end 

    def match(array)
        array.select do |word| 
            word.split("").sort == @word.split("").sort
        end 
    end 

end 