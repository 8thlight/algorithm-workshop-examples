defmodule Flatten do
  @new_list []

  def flatten(list) do
    list
    |> execute_flatten(@new_list)
  end

  defp execute_flatten([head | tail], result) when is_list(head) do
    execute_flatten(head, result) ++ execute_flatten(tail, @new_list)
  end

  defp execute_flatten([head | tail], result) do
    tail
    |> execute_flatten(result ++ [head])
  end

  defp execute_flatten([], result), do: result
end
