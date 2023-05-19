def reverse_words(string)
  output = []
  string.split.each {|word| output.prepend(word)}
  return output.join(' ')
end

string1 = "Hello my Love"

3.times do
  time1 = Time.now
  reverse_words(string1)
  time2 = Time.now

  durée = time2 - time1
  p "#{durée * 10**6} microseconds"
end
