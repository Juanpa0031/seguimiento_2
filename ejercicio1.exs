defmodule Eco do
  def eco() do
    Util.input_data("Ingrese el mensaje: ")
      |> String.upcase()
      |> Util.show_message
  end
end
Eco.eco()
