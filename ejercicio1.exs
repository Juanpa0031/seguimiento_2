defmodule Eco do
  @moduledoc """
  Módulo Eco - Procesa y repite mensajes en mayúsculas.

  Este módulo proporciona funcionalidad para capturar un mensaje del usuario,
  convertirlo a mayúsculas y mostrarlo nuevamente.
  """

  @doc """
  Función principal que ejecuta el proceso de eco.

  ## Flujo de ejecución

  1. Solicita al usuario que ingrese un mensaje
  2. Convierte el mensaje a mayúsculas
  3. Muestra el mensaje procesado

  ## Returns

  - String.t() - El mensaje ingresado convertido a mayúsculas
  """
  def eco() do
    Util.input_data("Ingrese el mensaje: ")
      |> String.upcase()
      |> Util.show_message
  end
end

# Ejecuta la función principal
Eco.eco()
