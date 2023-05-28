#Remember try to avoid brute forcing it.
#Make it linear or close to linear.

# Piste 1 qui marche pas alors que je pensais

def get_indices_of_item_weights(arr, limit)
  for i in 0...arr.length do
    for j in i+1..arr.length do
      if (arr[i] + arr[j]) == limit
        return [i, j]
        break
      end
    end
  end
  return null
end

# Piste 2 qui marche pas mais je le sentais
#Remember try to avoid brute forcing it.
#Make it linear or close to linear.

def get_indices_of_item_weights(arr, limit)
  i = 0
  j = 1

  until (arr[i] + arr[j]) == limit && i == arr.length -1 && j == arr.length
    i += 1
    j += 1
  end
  return [i, j]
  return null
end

