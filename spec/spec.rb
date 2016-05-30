# -*- coding: utf-8 -*-

require 'spec_helper'
require './lib/lista.rb'


describe "Lista" do

	before :each do
		@libro1 = Pract7::Libro.new("Dave Thomas, Andy Hunt, Chad Fowler",
								  "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby)",
								   "serieXCV", "Pragmatic Bookshelf", "4 edition", "July 7, 2013",
								   "ISBN-13: 978-1937785499. ISBN-10: 1937785491")
		@libro2 = Pract7::Libro.new("Scott Chacon",
								  "Pro Git 2009th Edition. (Pro)",
								   "serieXCV", "Apress", "2009th Edition", "August 27, 2009",
								   "ISBN-13: 978-1430218333. ISBN-10: 1430218339")
	end

	describe "Operaciones con lista: " do

		it "Puedo crear un nodo" do
			aux = List.new(@libro1)
			aux.class.should eq List
		end

		it "Puedo añadir un nodo" do
			aux = List.new(@libro1)
			aux.push(@libro2)
			aux.head.next.value.get_autores.should eq "Scott Chacon"
		end

		it "Puedo eliminar un nodo" do
			aux = List.new(@libro1)
			aux.push(@libro2)
			aux.pop
			aux.head.next.should eq nil
		end

		it "Puedo mostrar la lista" do
			aux = List.new(@libro1)
			aux.push(@libro2)
			(aux.show[0].to_s.should eq @libro1.to_s) && (aux.show[1].to_s.should eq @libro2.to_s)
		end

	end

end