# Fonctionne
def points(games)
  sum = 0
  games.each do |score|
    if score[0] > score [-1]
      sum += 3
    elsif score[0] < score [-1]
      sum += 0
    elsif score[0] == score [-1]
      sum += 1
    end
  end
    return sum
end

# Autre variante à laquelle j'ai pensé pour moins faire if, else etc...
# M'a permis de découvrir .zero? .positive? .negative?
# Fonctionne
def points(games)
  sum = 0
  games.each do |score|
    diff = score[0].to_i - score[-1].to_i
    sum += 1 if diff.zero?
    sum += 3 if diff.positive?
  end
  return sum
end

# Variantes

# Je n'avais pas du tout cette syntaxe - A CREUSER
# Compare les deux scores et attribue les valeurs 1, 3 ou 0
# La comparaison renvoie -1 0 ou 1 donc en utilisant ce résultat comme un indice d'array
# on crée l'array correspondant au score
def points(games)
  games.sum { |score| [1, 3, 0][score[0] <=> score[2]] }
end

# Fait des sous-arrays de deux et compare
def points(games)
  score = 0

  test = games.map { |x| x.split(':') }.map do |x|
    score += 3 if x[0] > x[1]
    score += 0 if x[0] < x[1]
    score += 1 if x[0] == x[1]
  end
  score
end

# Ternaire nesté!
# J'y ai pensé mais je ne savais pas si c'était best practice ou pas!
# Seulement 3 best practice
def points(g)
  g.map {|n| n[0].to_i > n[2].to_i ? 3 : (n[0].to_i == n[2].to_i ? 1 : 0) }.sum
end
