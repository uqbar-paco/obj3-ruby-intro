require 'rspec'
require_relative '../lib/punto'

describe 'Puntos' do
	describe 'initialize' do
		it 'por defecto debe iniciarse en el origen' do
			punto=Punto.new
			expect(punto.es_el_origen?).to be true
		end
	end
end