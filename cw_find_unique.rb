# Fonctionne
def find_uniq(arr)
  arr.sort.first == arr.sort[1] ? arr.sort.last : arr.sort.first
end

# VARIANTES
# On itère sur les élements constitutifs en ayant fait uniq et
# ensuite on compte pour chacun de ces élements dans l'array initial
def find_uniq(arr)
  arr.uniq.each { |x| return x if arr.count(x) == 1 }
end
