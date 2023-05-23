# Solution qui marche
# C'est la best practice

def bool_to_word bool
  bool ? "Yes" : "No"
end


# Variante explicite
def bool_to_word bool
  if bool == true
    return 'Yes'
  elsif bool == false
    return 'No'
  end
end

# Variante entre deux:
def bool_to_word bool
  bool == true ? 'Yes' : 'No'
end


# Variante avec hash - Interessant
# Créer un hash et demander la valeur de la clé (crochet) faite du booléen
def bool_to_word bool
  {true => 'Yes', false => 'No'}[bool]
end
