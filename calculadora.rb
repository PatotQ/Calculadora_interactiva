def menu
    puts "Calculadora Interactiva"
    puts "Seleccione una operación:"
    puts "1. Sumar"
    puts "2. Restar"
    puts "3. Multiplicar"
    puts "4. Dividir"
    puts "5. Salir"
    print "Opción: "
  end
  
  def obtener_numeros
    print "Ingrese el primer número: "
    num1 = gets.to_f
    print "Ingrese el segundo número: "
    num2 = gets.to_f
    [num1, num2]
  end
  
  loop do
    menu
    opcion = gets.to_i
  
    case opcion
    when 1
      num1, num2 = obtener_numeros
      puts "Resultado: #{num1} + #{num2} = #{num1 + num2}"
    when 2
      num1, num2 = obtener_numeros
      puts "Resultado: #{num1} - #{num2} = #{num1 - num2}"
    when 3
      num1, num2 = obtener_numeros
      puts "Resultado: #{num1} * #{num2} = #{num1 * num2}"
    when 4
      num1, num2 = obtener_numeros
      if num2.zero?
        puts "Error: No se puede dividir por cero."
      else
        puts "Resultado: #{num1} / #{num2} = #{num1 / num2}"
      end
    when 5
      puts "¡Adiós!"
      break
    else
      puts "Opción no válida. Intente de nuevo."
    end
    puts
  end
  