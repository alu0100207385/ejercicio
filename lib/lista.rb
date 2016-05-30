require_relative 'pract7'
require_relative 'node'


class List < Node

	include Pract7

	def initialize (libro)
		@head = Node.new(libro)
	end


	#Añade un elemento en la lista. Alias: unshift, insert
	def push(nuevo)
		actual = @head
		while (actual.next != nil)
			actual = actual.next
		end
		actual.next = Node.new(nuevo)
	end

	#Elimina el ultimo elemento de la lista. Alias: shift
	def pop
		return false if @head.nil?
		return @head = nil if @head.next.nil?
		actual = @head
		previo = @head
		while (actual.next != nil)
			previo = actual
			actual = actual.next
		end
		previo.next = nil
	end

	#Recorre y devuelve la lista de nodos
	def show
		return false if @head.nil?
		lista = []
		actual = @head
		while (actual.next != nil)
			lista << actual.value
			actual = actual.next
		end
		lista << actual.value
	end

end