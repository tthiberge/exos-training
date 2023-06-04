# Introduction
# The first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.

# Task
# Given a year, return the century it is in.

# Examples
# 1705 --> 18
# 1900 --> 19
# 1601 --> 17
# 2000 --> 20
# Note: this kata uses strict construction as shown in the description and the examples, you can read more about it here


# Solution qui marche mai j'ai l'impression d'avoir fait usine à gaz
# C'est parce que j'ai essayé de trouver une solution qui s'adapte à est-ce que l'anée a 3 ou 4 digits (ou plus), donc je voulais travailler avec les digits de la fin
# Sinon, je pensais if length 2, 3, 4. ça fait plus de boucles, c'est pas proof pour des millénaires dans le futur, mais ça l'aurait fait
def century(year)
  if year.digits.length == 2
    return 1
  elsif
    a = year.digits.reverse
    if a[-2..-1].join.to_i > 0
      2.times do
        a.delete_at(-1)
      end
      a.join.to_i + 1
    else
       2.times do
        a.delete_at(-1)
      end
      a.join.to_i
    end
  end
end
