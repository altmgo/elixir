# Booleans values
true_variable = true
false_variable = false

# Operators
# and/2
true_variable = true and true
false_variable = true and false

# or/2
true_variable = false or true
false_variable = false or false

# not/1
true_variable = not false
false_variable = not true

# Idiomatic convention:
# when writing a function that returns bool, ends it with ?
# same for parameters
defmodule example do
  def either_true?(a?, b?) do
    a? or b?
  end

end
