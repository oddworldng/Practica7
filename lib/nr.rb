#!/usr/bin/ruby

class NumerosRacionales

	attr_accessor :numerador, :denominador

	def initialize(x,y)
		@numerador = x
		@denominador = y
	end

	def num
		numerador
	end

	def denom
		denominador
	end

	def numeroracional
		return numerador/denominador
	end
	
	def mostrarab # Muestra la fracción en forma a/b
		puts "#{numerador}/#{denominador}"
	end

	def mostrarfloat 
		puts numeroracional
	end

	def comprobarfracciones
		if ((3.5/2.5) == (3.5/2.5))
			return "Son iguales"
		else
			return "Son distintas"
		end
	end

	def vabsoluto
		return numeroracional.abs
	end
	
	def reciproco
		return 1/numeroracional
	end

	def -(a,b)
		return @denominador
	end


	def opuesto
		return denominador-numerador
	end

end	
