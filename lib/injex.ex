defmodule Injex do

  defmacro __using__(_) do
    quote do
      import Injex, only: :macros
    end
  end

  defmacro resolve(entity) when is_atom(entity) do
   quote do
     Application.compile_env(:injex, unquote(entity))
   end
 end
end
