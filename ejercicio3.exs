# calcula el salario con horas extras
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

# Mostrar resultado en JOptionPane
Util.show_message("El salario neto de #{nombre} es #{salario_neto_entero}")
