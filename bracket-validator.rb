BRACKET_OPENERS = ['(', '[', '{']
BRACKET_CLOSERS = [')', ']', '}']

p BRACKET_OPENERS
p BRACKET_CLOSERS
p BRACKET_OPENERS.include?('(')
p BRACKET_CLOSERS.include?('}')
p BRACKET_CLOSERS.include?('a')

# p 'hello'.chars

def check_brackets(string)
  stack_brackets = []
  stack_other = []

  string.chars.each do |character|
    if BRACKET_OPENERS.include?(character)
      stack_brackets << character

    elsif BRACKET_CLOSERS.include?(character)
      if stack_brackets.last == '(' && character == ')' || stack_brackets.last == '[' && character == ']' || stack_brackets.last == '{' && character == '}'
        stack_brackets.pop
      else
        "sorryyyy"
      end
    else
      stack_other << character
    end
  end
end

# Solution jour 1 optionnel
def valid_brackets?(string)
  stack = []
  symbols = { "{" => "}", "[" => "]", "(" => ")" }
  string.each_char do |char|
    return false if symbols.value?(char) && symbols.key(char) != stack.pop

    stack << char if symbols.key?(char)
  end
  stack.empty?
end

a = "enivrant ()"
p check_brackets(a)
p valid_brackets?(a)
