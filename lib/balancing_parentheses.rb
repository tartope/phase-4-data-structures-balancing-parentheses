require_relative './stack'

# your code here
# Takes as input a string consisting of some number of '(' and ')' characters
def balancing_parentheses(string)
    # Creates an instance of the Stack class
    stack = Stack.new

    # Using the stack, checks the string to determine whether the parentheses inside it are balanced
    string.chars.each do |c|
        if stack.peek == '(' && c == ')'
            stack.pop
        else
            stack.push(c)
        end
    end

    # Returns the number of additional parentheses that would need to be added to the string to make it balanced
    stack.size

end