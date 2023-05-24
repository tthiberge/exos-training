# Solution 4 - Me permet d'utilise l'itérateur reverse_each
def reverse_words(string)
  output = []
  string.split.reverse_each {|word| output << word}
  return output.join(' ')
end

string1 = "Hello my Love"

100.times do
  time1 = Time.now
  reverse_words(string1)
  time2 = Time.now

  durée = time2 - time1
  p "#{durée * 10**6} microseconds"
end



# # SOLUTION 3 qui MARCHE - Encore plus court que Solution 1 - Mais Sol 1 me permettait de tester .prepend que je cherchais la veille
# def reverse_words(string)
#   string.split.reversetes.join(' ') # reverse marche sur un array
# end

# string1 = "Hello my Love"

# 3.times do
#   time1 = Time.now
#   reverse_words(string1)
#   time2 = Time.now

#   durée = time2 - time1
#   p "#{durée * 10**6} microseconds"
# end



# SOLUTION 1 qui MARCHE
# def reverse_words(string)
#   output = []
#   string.split.each {|word| output.prepend(word)}
#   return output.join(' ')
# end

# string1 = "Hello my Love"

# 3.times do
#   time1 = Time.now
#   reverse_words(string1)
#   time2 = Time.now

#   durée = time2 - time1
#   p "#{durée * 10**6} microseconds"
# end

# SOLUTION 2 qui n'ABOUTIT PAS
# def reverse_words(string)
#   output = []
#   split_words = string.split

#   output << split_words[0]
#   for i in 1...split_words.length
#     output split_words[i]
#     puts output
#   end

#   return output.join(' ')
# end

# string1 = "Hello my Love"
# p reverse_words(string1)
