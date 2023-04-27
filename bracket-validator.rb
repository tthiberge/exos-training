BRACKET_OPENERS = ['(', '[', '{']
BRACKET_CLOSERS = [')', ']', '}']

p BRACKET_OPENERS
p BRACKET_CLOSERS
p BRACKET_OPENERS.include?('(')
p BRACKET_CLOSERS.include?('}')
p BRACKET_CLOSERS.include?('a')

# p 'hello'.chars

def check_brackets(string)
  stack = []
  string.chars.each do |character|
    if BRACKET_OPENERS.include?(character)
      stack << character

    elsif BRACKET_CLOSERS.include?(character)
      if stack.last == '(' && character == ')'
        stack.pop
      elsif stack.last == '[' && character == ']'
        stack.pop
      elsif stack.last == '{' && character == '}'
        stack.pop
      else
        puts "Sorry, but it is not closing properly ! Check again!"
      end
    end
    puts "Everything checks! Congrats" if stack.empty?
  end
end

a = "Je ne crois pas non"
p check_brackets(a)
