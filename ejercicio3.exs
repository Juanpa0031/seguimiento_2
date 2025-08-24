defmodule CalculadoraSalarial do
  @moduledoc """
  Módulo CalculadoraSalarial - Calcula salarios con horas extras.

  Este módulo calcula el salario neto de un empleado considerando:
  - Horas base (hasta 160 horas)
  - Horas extras (más de 160 horas) con recargo del 25%

  ## Fórmula de cálculo
  - Horas base: min(horas_trabajadas, 160) * valor_hora
  - Horas extras: max(horas_trabajadas - 160, 0) * valor_hora * 1.25
  - Salario neto: salario_base + salario_extra
  """

  @doc """
  Calcula el salario neto con base en horas trabajadas y valor por hora.

  ## Flujo de ejecución

  1. Solicita al usuario: nombre, horas trabajadas y valor por hora
  2. Calcula horas base (máximo 160 horas)
  3. Calcula horas extras (horas beyond 160 con recargo del 25%)
  4. Suma salario base y salario extra
  5. Muestra el resultado formateado

  ## Returns

  - String.t() - Mensaje con el salario neto calculado

  ## Notas

  - Las horas extras se pagan con un 25% de recargo
  - El cálculo trunca el resultado para evitar decimales
  - Asume una jornada base de 160 horas mensuales
  """
  def calcular_salario() do
    # Ingreso de datos base
    nombre = Util.input_data("Ingrese su nombre:")
    horas_trabajadas = Util.input_data("Ingrese las horas trabajadas:") |> String.to_integer()
    valor_hora = Util.input_data("Ingrese el valor por hora:") |> String.to_integer()

    # Calcular salario base y horas extras
    horas_base = min(horas_trabajadas, 160)
    salario_base = horas_base * valor_hora

    horas_extras = max(horas_trabajadas - 160, 0)
    salario_extra = horas_extras * valor_hora * 1.25

    salario_neto = salario_base + salario_extra

    # Redondear para evitar notación científica
    salario_neto_entero = trunc(salario_neto)

    # Mostrar resultado
    Util.show_message("El salario neto de #{nombre} es #{salario_neto_entero}")
  end
end

# Ejecutar la calculadora salarial
CalculadoraSalarial.calcular_salario()
