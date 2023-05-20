# Trolls are attacking your comment section!
# A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.
# Your task is to write a function that takes a string and return a new string with all vowels removed.
# For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".
# Note: for this kata y isn't considered a vowel.

# WORKING
def disemvowel(str)
  str.gsub(/[aeiouAEIOU]/, '')
end
# NB: Bien penser aux majuscules

# Y a t il une fonction qui prend les voyelles?
# Je regarde dans les regexp

def disemvowel(str)
  str.gsub(/[aeiou]/i, '')
end
# Marche aussi, je dis d'être insenstif à la casse de mes voyelles

# Aurait aussi pu marcher avec delete
str.delete "aeiou"
str.delete("aeiou")
