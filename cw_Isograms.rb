# An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.
# Example: (Input --> Output)
# "Dermatoglyphics" --> true "aba" --> false "moOse" --> false (ignore letter case)

# isIsogram "Dermatoglyphics" = true
# isIsogram "moose" = false
# isIsogram "aba" = false

# Du premier coup:
def is_isogram(string)
  string.empty? ? true : string.downcase.chars.uniq == string.downcase.chars
end
# J'utilise un ternaire car assez simple
# Je compare l'array des lettres du mot avec l'array des lettres du mot où la fonction .uniq enlève les doublons
# C'est l'option best practice hehe

# OPTION 2, je pense à une intersection - Marche PAS, hmmm
# L'intersection avec && devrait créer l'unicité des valeurs du tableau, je l'avais vu sur stackoverflow
def is_isogram(string)
  string.empty? ? true : string.downcase.chars && string.downcase.chars == string.downcase.chars
end

# Autres proposition
