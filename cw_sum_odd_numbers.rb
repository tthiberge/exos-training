# Given the triangle of consecutive odd numbers:

#              1
#           3     5
#        7     9    11
#    13    15    17    19
# 21    23    25    27    29
# ...
# Calculate the sum of the numbers in the nth row of this triangle (starting at index 1) e.g.: (Input --> Output)

# 1 -->  1
# 2 --> 3 + 5 = 8

# Solution qui marche
def row_sum_odd_numbers(n)
  n**3
end
# En fait en calculant je me suis rendu compte que la somme était liée à la ligne.
# Au début j'ai compris que c'était le carré de n, fois la ligne, donc en fait encore n!
# donc n^3

# Variantes

# Smart, mais il faut réussir à définir par n le début du range et la fin (exclue)
# Ensuite, fonction step(2) très intéressante pour passer de 2 en 2
def row_sum_odd_numbers(n)
  start = n * n - n + 1
 finish = start + 2 * n
 (start...finish).step(2).reduce(:+)
end

# Complexe, mais il remarque que à la ligne n, il y a n éléments
# Il s'en sert pour sa boucle nestée
def row_sum_odd_numbers(n)
  odd_pyramid = []
  start = 1

  n.times do |idx|
    row_number = idx + 1
    row_array = []

    row_number.times do
      row_array << start
      start += 2
    end

    odd_pyramid << row_array
  end

  odd_pyramid[n-1].sum
end


