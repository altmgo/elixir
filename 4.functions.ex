# functions must be defined inside a module

defmodule Calculator do

  # def keyword
  def add(x,y) do
    x + y # the value of the last expression is the return
  end

end

# invoking a function
sum = Calculator.add(6,7)
# => 13


## Private functions
defmodule Calculator2 do

  # add/2
  def add(x,y) do
    private_add(x,y)
  end

  # add/3
  def add(x,y,z), do: x+y+z

  # private functions can only be access in the same module
  defp private_add(x,y), do: x+ y
end

sum = Calculator_2.add(6,7)
# => 13

sum = Calculator_2.private_add(6,7)
# => ** (UndefinedFunctionError)
# function Calculator.private_subtract/2 is undefined or private
#       Calculator.private_subtract(7, 2)


# The compiler refers to a function as function_name/n
# n is the arity (number of arguments)
# private_subtract/2 = private_subtract, 2 params implementation

# You can have multiple functions with the same name, if they have different arity
# The identifier of a function is: name/arity


# Naming convention
# Module: PascalCase
# Functions and var: snake_case

# Standart lib: https://elixir.hexdocs.pm/Kernel.html#content
# There are modules with functions to most data-types: String, Integer, List, etc...
# Kernel module: provides basic capabilities on top of the lib.
# Kernel functions doesn't need kernel keyword.
