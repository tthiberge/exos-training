# N'a pas marché au début sans la conversion des strings en integer. ça ne repérait pas bien les mix et max
def high_and_low(numbers)
  numbers.split(' ').map! {|number| number.to_i}.minmax.reverse.join(' ')
end

# NB: split sans argument aurait aussi fonctionné

# Variante - Best practice - presque ce que j'ai fait
# Il faut connaite minmax, ce qui était on cas
def high_and_low(numbers)
	numbers.split.map(&:to_i).minmax.reverse.join(' ')
end
# -> Me renseigner sur ce &:to_i


# Variante avec concatenation, j'y ai aussi pensé
def high_and_low(numbers)
  numbers = numbers.split.map(&:to_i)
  "#{numbers.max} #{numbers.min}"
end

# Variante en triant, pas mal aussi
def high_and_low(numbers)
  a = numbers.split.map(&:to_i).sort
  "#{a.last} #{a.first}"
end
