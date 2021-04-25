defmodule Inmana.Welcomer do
  def welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    name
    |> String.trim()
    |> String.downcase()
    |> evaluate(age)
  end

  defp evaluate("banana", 42) do
    {:ok, "Y u r geh?"}
  end

  defp evaluate(name, age) when age >= 18 do
    {:ok, "U r geh #{name}"}
  end

  defp evaluate(name, _age) do
    {:error, "Geh? #{name}"}
  end
end
