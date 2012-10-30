#!/usr/bin/ruby
require 'ppt'

describe PiedraPapelTijeras do

	before :each do
		@ppt_obj = PiedraPapelTijeras.new
	end

	it "Debe existir una tirada para el humano\n" do
		@ppt_obj.humano.should == :piedra
	end

	it "Debe existir una tirada para la maquina\n" do
		@ppt_obj.computer.should == :papel
	end

	it "Debe existir una lista de tiradas validas\n" do
		@ppt_obj.tiradas.should == [:piedra, :papel, :tijeras]
	end

	it "Debe existir una lista de jugadas posibles y quien gana\n" do
		@ppt_obj.jugadasposibles.should == [:piedra => :papel, :papel => :tijeras, :tijeras => :piedra]
	end

	it "Se debe invocar al metodo obtener_humano() para recoger la tirada del humano y que esta sea valida\n" do
		@ppt_obj.obtener_humano.should == @ppt_obj.humano
	end

	it "Se debe invocar al metodo obtener_maquina() para recoger la tirada de la maquina y que esta sea valida\n" do
		@ppt_obj.obtener_maquina.should == @ppt_obj.computer
	end

	it "Debe existir una lista de resultados de un juego desde el punto de vista de la maquina\n" do
		@ppt_obj.lista_resultados.should == [:piedra, :papel, :tijeras, :piedra, :piedra, :tijeras, :piedra]
	end

	it "Debe existir un resultado para un juego, desde el punto de vista de la maquina\n" do
		@ppt_obj.unico_juego.should == [:tijeras]
	end
	
	it "Se debe invocar al metodo jugar() para determinar el ganador de la tirada\n" do
		@ppt_obj.jugar.should == @ppt_obj.jugadores[-2]
	end

	it "Se debe de comprobar que las tiradas de la maquina al ser aleatorias recorren las tres posibilidades\n" do
		@ppt_obj.comprobar_todas_tiradas_maquina.should == "Se han realizado las tres posibles tiradas"
	end

	it "Se debe comprobar que las tiradas de la maquina y del humano no son siempre la misma\n" do
		@ppt_obj.comprobar_tiradas.should == "No son la misma tirada"
	end 

end

