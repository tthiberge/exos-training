# You might know some pretty large perfect squares. But what about the NEXT one?
# Complete the findNextSquare method that finds the next integral perfect square after the one passed as a parameter. Recall that an integral perfect square is an integer n such that sqrt(n) is also an integer.
# If the parameter is itself not a perfect square then -1 should be returned. You may assume the parameter is non-negative.

# Examples:(Input --> Output)
# 121 --> 144
# 625 --> 676
# 114 --> -1 since 114 is not a perfect square

# Return the next square if sq is a perfect square, -1 otherwise
def find_next_square(sq)
  if sq < 0 || Integer.sqrt(sq)**2 != sq # Pour moi ça permet de vérifier que racine de sq est un integer car la fonction fait un arrondi en dessous
    # Donc si en remettant au carré, on ne retombe pas sur la valeur de départ, alors c'est que la sqrt n'était pas un integer mais un float
    return -1
  else
    return (Integer.sqrt(sq) + 1)**2
  end
end
# -> MARCHE

# ---
# Autres solutions
# J'aurais pu faire tenir ma solution en ternaire si je vérifiais pas que sq est positif

def find_next_square(sq)
  Math.sqrt(sq).floor**2==sq ? (Math.sqrt(sq)+1)**2 : -1
end
