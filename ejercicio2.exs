defmodule Remplazar do
  def remplazar() do
    Util.input_data("ingrese una palabra")
     |> String.length()
     |> Integer.to_string()
     |> Util.show_message
  end
end
Remplazar.remplazar()
