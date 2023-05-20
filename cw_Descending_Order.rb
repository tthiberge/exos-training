# Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

# Examples:
# Input: 42145 Output: 54421
# Input: 145263 Output: 654321
# Input: 123456789 Output: 987654321

def descending_order(n)
  if n < 0
    return "Sorry, but your number must be positive"
  else
    return n.digits.sort.reverse.join('').to_i
    # Ne ps oublier le to_i car join me crée bien une string
  end
end

# Etrangement,
def descending_order(n)
  n.digits.join('').to_i
end
# aurait dû fonctionner car .digits classe déjà du plus grand au plus petit dans l'array,
# donc pas besoin de .sort.reverse. En tout cas ça marche dans l'irb
# Néanmoins les solutions des autres font aussi .sort.reverse

# Option des autres solutions
# Passer en string et créer le tableau des digits avec chars. Mais .digits le fait seul donc autant en profiter!
def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end
