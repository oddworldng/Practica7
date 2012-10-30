#!/usr/bin/ruby

class PiedraPapelTijeras

	def humano
		:piedra
	end

	def computer		
		@@lista = [:piedra, :papel, :tijeras, :piedra, :piedra, :tijeras, :piedra]
		@@unico = [:tijeras]
		:papel
	end

	def tiradas
		[:piedra, :papel, :tijeras]
	end

	def jugadasposibles
		[:piedra => :papel, :papel => :tijeras, :tijeras => :piedra]
	end

	def obtener_humano
		if tiradas.include?humano
			return humano
		end
	end

	def obtener_maquina
		if tiradas.include?computer
			return computer
		end
	end

	def lista_resultados	
		@@lista
	end

	def unico_juego
		@@unico
	end

	def jugadores
		[:computer, :humano]
	end

	def jugar
		if ((humano == :piedra && computer == :tijeras) || (humano == :papel && computer == :piedra) || (humano == :tijeras && computer == :papel))
			return jugadores[-1] #humano
		else
			return jugadores[-2] #computer
		end
	end

	#jugadores[rand(jugadores.size)]

	def comprobar_todas_tiradas_maquina

		cont_piedra = 0
		cont_papel = 0
		cont_tijeras = 0

		while cont_piedra < 1 || cont_papel < 1 || cont_tijeras < 1 do
			tiradacomputer = tiradas[rand(tiradas.size)]
			if tiradacomputer == :piedra 
				cont_piedra += 1
			elsif tiradacomputer == :papel 
				cont_papel += 1
			elsif tiradacomputer == :tijeras
				cont_tijeras += 1
			end

		end

		return "Se han realizado las tres posibles tiradas"
	end

	def comprobar_tiradas

		if computer == humano
			return "Son la misma tirada"
		else
			return "No son la misma tirada"
		end

	end

end	
