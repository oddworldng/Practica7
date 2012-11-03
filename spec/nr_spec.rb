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
		# Comprueba si: ((a/b) == (c/d)), donde a = parametro1, b = parametro2, etc..
		@nr.==(3.5,2.5,3.5,2.5).should == "Son iguales" 
	end

	it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
		@nr.vabsoluto.should == @nr.numeroracional.abs # Numeros no negativos
	end

	it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
		# Recíproco es el inverso de un número (1/número)
		@nr.reciproco.should == 1/@nr.numeroracional
	end

	it "Se debe calcular el opuesto de una fraccion con -" do
		# Le pasamos (numerador/denominador) y nos devuelve (denominador/numerador)
		@nr.-(@nr.numerador,@nr.denominador).should == "#{@nr.denominador}/#{@nr.numerador}" 
	end

	it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
		# Le pasamos (a/b) y (c/d), lo sumamos y devolvemos el resultado en su forma reducida
		@nr.+(2.5,3.7,6,5).should.class == Float
	end

	it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
		#@nr.-(2.5,5.2,7.1,3.2).should.class == Float
	end

	it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
		@nr.*(2.5,5.2,7.1,3.2).should.class == Float
	end

	it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
		@nr./(2.5,5.2,7.1,3.2).should.class == Float
	end

	it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do	
		@nr.%(2.5,5.2,7.1,3.2).should.class == Float
	end

	it "Se debe de poder comprobar si una fracion es menor que otra" do
		# Comprueba si (2.5/5.2) < (7.1/3.2)
		@nr.<(2.5,5.2,7.1,3.2).should == "true"
	end

	it "Se debe de poder comprobar si una fracion es mayor que otra" do
		# Comprueba si (2.5/5.2) > (7.1/3.2)
		@nr.>(2.5,5.2,7.1,3.2).should == "false"
	end

	it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
		# Comprueba si (2.5/5.2) <= (7.1/3.2)
		@nr.<=(2.5,5.2,7.1,3.2).should == "true"
	end

	it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
		# Comprueba si (2.5/5.2) >= (7.1/3.2)
		@nr.>(2.5,5.2,7.1,3.2).should == "false"
	end

end

