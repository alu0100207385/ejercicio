require_relative '../lib/lista'

libro = Pract7::Libro.new("Dave Thomas, Andy Hunt, Chad Fowler",
								  "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby)",
								   "serieXCV", "Pragmatic Bookshelf", "4 edition", "July 7, 2013",
								   "ISBN-13: 978-1937785499. ISBN-10: 1937785491")

libro2 = Pract7::Libro.new("Scott Chacon",
								  "Pro Git 2009th Edition. (Pro)",
								   "serieXCV", "Apress", "2009th Edition", "August 27, 2009",
								   "ISBN-13: 978-1430218333. ISBN-10: 1430218339")

libro3 = Pract7::Libro.new("asf sdfsdf",
								  "Pro Git 200fsdfsdfsdfon. (Pro)",
								   "serieXCV", "sdfdfs", "2009th dffffff", "August 27, 2009",
								   "ISBN-13: 978-1430218333. ISBN-10: 1430218339")

lista = List.new(libro)
lista.push(libro2)
lista.push(libro3)
puts lista.show

lista.pop
puts lista.show
