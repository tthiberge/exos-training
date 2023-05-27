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
