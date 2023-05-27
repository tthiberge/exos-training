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
