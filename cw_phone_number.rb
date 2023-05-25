# Solution qui marche
def create_phone_number(numbers)
  return "(#{numbers[0]}#{numbers[1]}#{numbers[2]}) #{numbers[3]}#{numbers[4]}#{numbers[5]}-#{numbers[6]}#{numbers[7]}#{numbers[8]}#{numbers[9]}"
end


# Variante - Incroyable, aucune idée de cette fonction - à essayer!!
def createPhoneNumber(array)
  '(%d%d%d) %d%d%d-%d%d%d%d' % array
end

# Variante - ça j'aurais pu, bcp plus élégant que moi!
def createPhoneNumber(str)
  "(#{str[0..2].join}) #{str[3..5].join}-#{str[6..10].join}"
end

# Variante - encore mieux!
def createPhoneNumber(numbers)
  n = numbers.join
  "(#{n[0..2]}) #{n[3..5]}-#{n[6..9]}"
end
