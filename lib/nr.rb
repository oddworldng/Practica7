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

	def ==(a,b,c,d)
		if ((a/b) == (c/d))
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
		return "#{b}/#{a}" 
	end

	def +(a,b,c,d)
		return (a/b)+(c/d)
	end

	#def -(x,y,z,w)
	#	return (x/y)-(z/w)
	#end

	def *(a,b,c,d)
		return (a/b)*(c/d)
	end

	def /(a,b,c,d)
		return (a/b)/(c/d)
	end

	def %(a,b,c,d)
		return (a/b)%(c/d)
	end

	def <(a,b,c,d)
		if (a/b)<(c/d)
			return "true"
		else
			return "false"
		end
	end

	def >(a,b,c,d)
		if (a/b)>(c/d)
			return "true"
		else
			return "false"
		end
	end

	def <=(a,b,c,d)
		if (a/b)<(c/d)
			return "true"
		else
			return "false"
		end
	end

	def >=(a,b,c,d)
		if (a/b)>(c/d)
			return "true"
		else
			return "false"
		end
	end

end	
