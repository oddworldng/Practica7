#!/usr/bin/ruby

require 'nr'

describe NumerosRacionales do

	before :each do
		@nr = NumerosRacionales.new(3.5,2.0)	
	end

	it "Debe existir un numerador" do
		defined?(@nr.numerador)
	end

	it "Debe existir un denominador" do
		defined?(@nr.denominador)
	end

	it "Debe de estar en su forma reducida" do
		@nr.numeroracional.class.should == Float
	end

	it "Se debe invocar al metodo num() para obtener el numerador" do
		@nr.num.should == @nr.numerador
	end

	it "Se debe invocar al metodo denom() para obtener el denominador" do
		@nr.denom.should == @nr.denominador
	end

	it "Se debe mostar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
		@nr.mostrarab
	end	

	it "Se debe mostar por la consola la fraccion en formato flotante" do
		@nr.mostrarfloat
	end
	
	it "Se debe comparar si dos fracciones son iguales con ==" do
		@nr.comprobarfracciones.should == "Son iguales"
	end

	it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
		@nr.vabsoluto # Numeros no negativos
	end

	it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
		@nr.reciproco
	end

	it "Se debe calcular el opuesto de una fraccion con -" do
		#puts @nr.opuesto
	end

	it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
	end

	it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
	end

	it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
	end

	it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
	end

	it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do	
	end

	it "Se debe de poder comprobar si una fracion es menor que otra" do
	end

	it "Se debe de poder comprobar si una fracion es mayor que otra" do
	end

	it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
	end

	it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
	end

end

