defmodule Remplazar do
  @moduledoc """
  Módulo Remplazar - Calcula y muestra la longitud de una palabra.

  Este módulo se encarga de procesar una palabra ingresada por el usuario,
  calcular la cantidad de caracteres que contiene y mostrar el resultado.
  """

  @doc """
  Función principal que calcula la longitud de una palabra.

  ## Flujo de ejecución
  1. Solicita al usuario que ingrese una palabra
  2. Calcula la longitud (número de caracteres) de la palabra
  3. Convierte el número a string
  4. Muestra el resultado al usuario

  ## Returns

  - String.t() - La longitud de la palabra como string
  """
  def remplazar() do
    Util.input_data("ingrese una palabra")
     |> String.length()
     |> Integer.to_string()
     |> Util.show_message
  end
end

# Ejecuta la función principal
Remplazar.remplazar()
