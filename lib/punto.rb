
require_relative "chamuyo"

class Punto
	
	@cuantos_cree=0
	@@todos=[]
	
	class<<self
		def todos
			@@todos
		end
	end
	
	def self.cuantos_cree
		@cuantos_cree
	end
	
	def self.cuantos_cree=(n)
		@cuantos_cree=n
	end
	
	def initialize(x=0,y=0)
		@x=x
		@y=y
		self.class.cuantos_cree=self.class.cuantos_cree+1
		@@todos<<self
	end
	
	def coordenada_mas_grande
		if y<x
			x
		else
			y
		end
	end
	
	def es_el_origen?
		x==0 and y==0
	end
	
	def contame_de_vos
		super + " en (#{x}, #{y})"
	end
	
	def x
		@x
	end
	
	def y
		@y
	end
	
	private
	def x=(x)
		@x=x
	end
	
	def y=(y)
		@y=y
	end
end

class PuntoColorido<Punto
	@cuantos_cree=0
	
	attr_accessor :color
	
	def initialize(x,y,color)
		super(x,y)
		@color=color
	end
	
	def contame_de_vos
		super + ", ademas soy #{color}"
	end
	
end

class Object
	include Chamuyo
end

@origen = Punto.new
@p = Punto.new(10,5)
@pc = PuntoColorido.new(8,17,"rojo")


