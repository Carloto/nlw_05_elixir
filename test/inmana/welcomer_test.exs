defmodule Inmana.WelcomerTeste do
  use ExUnit.Case

  alias Inmana.Welcomer

  describe "welcome/1" do
    test "when the user is special, returns a special message" do
      params = %{"name" => "banana", "age" => "42"}
      expected_result = {:ok, "Y u r geh?"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end

    test "when the user is not special, returns a message" do
      params = %{"name" => "banana", "age" => "32"}
      expected_result = {:ok, "U r geh banana"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end

    test "when the user is underage, returns an error" do
      params = %{"name" => "banana", "age" => "12"}
      expected_result = {:error, "Geh? banana"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end
  end
end
