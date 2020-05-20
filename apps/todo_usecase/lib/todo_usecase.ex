# defmodule TodoUsecase do

#   def hello do
#     :world
#   end
# end

defmodule MyApp.Calculator do
  @callback add(integer(), integer()) :: integer()
  @callback mult(integer(), integer()) :: integer()
end