# Fonctionne
def find_uniq(arr)
  arr.sort.first == arr.sort[1] ? arr.sort.last : arr.sort.first
end

